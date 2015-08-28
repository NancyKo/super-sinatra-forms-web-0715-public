require 'sinatra/base'


class Superhero
	attr_accessor :name, :power, :biography

	def initialize(params)
		@params = params
	end
end

class Team
	attr_accessor :name, :motto

	def initialize(params)
		@params = params
	end
end

class App < Sinatra::Base

	get '/' do
		erb :'/super_hero'
	end

	post '/teams' do
		@team = Team.new(params)
		@team.name = params["team"]["name"]
		@team.motto = params["team"]["motto"]

		@hero = Superhero.new(params)
		@hero.name = params["team"]["members"]["super1"]["name"]
		@hero.power = params["team"]["members"]["super1"]["power"]
		@hero.biography = params["team"]["members"]["super1"]["biography"]

		@heroo = Superhero.new(params)
		@heroo.name = params["team"]["members"]["super2"]["name"]
		@heroo.power = params["team"]["members"]["super2"]["power"]
		@heroo.biography = params["team"]["members"]["super2"]["biography"] 


		@herooo = Superhero.new(params)
		@herooo.name = params["team"]["members"]["super3"]["name"]
		@herooo.power = params["team"]["members"]["super3"]["power"]
		@herooo.biography = params["team"]["members"]["super3"]["biography"] 

		erb :'/teams_show'
	end
end
