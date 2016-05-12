#require 'httparty'
class Recipe < ActiveRecord::Base
	include HTTParty #Inclusion del modulo para usar json, Tomado del Slide				

	ENV['FOOD2FORK_KEY']= "708bb9cad36e5eee5201d86f15885a3b" #Descgraciadamente coloco esto para ver el funcionamiento en
	#ENV['FOOD2FORK_SERVER_AND_PORT']="food2fork.com" Esta variable se coloca en el Sistema Operativo


	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	base_uri "http://#{hostport}/api/search"
	default_params key: ENV['FOOD2FORK_KEY']
	format :json

	def self.for term
		#filas=get("", query: { q: qry})
		#filas['recetas'] # Retorna el ultimo
		get("", query: { q: term})["recipes"]
  	end
end
