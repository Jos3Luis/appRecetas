class RecipesController < ApplicationController
  #Segun el enunciado la palabra chocolate esta or defecto
  def index
  	param=(params[:search]=="")?("chocolate"):(params[:search]);
  	@recetas = Recipe.for(param)
  end
end
