require 'sinatra/base'

class Team
	attr_accessor :name, :motto

	def initialize(params)
		@params = params
	end
end

class Superhero
	attr_accessor :name, :power, :biography

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
		erb :'/team'
	end
end
