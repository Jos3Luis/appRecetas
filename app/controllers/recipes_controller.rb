class RecipesController < ApplicationController
  #Segun el enunciado la palabra chocolate esta or defecto
  def index
  	@param=(params[:search] or  "chocolate")
  	lista = Recipe.for(@param)
  	@recetas =lista["recipes"]
  end
end
