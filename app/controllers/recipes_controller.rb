class RecipesController < ApplicationController
  #Segun el enunciado la palabra chocolate esta or defecto
  def index
  	#param=(params[:search]=="")?("chocolate"):(params[:search]);
  	@param ="chocolate"
  	@recetas = Recipe.for(@param)
  	@peru="HHHH" 	
  end
end
