require "sinatra"
require "sinatra/reloader"
require "active_record"

require "pg"
require "pry"

# Load the file to connect to the DB
require_relative 'db/connection'

# Load models
require_relative 'models/pokemon'

get '/' do
	erb :"index"
end

get'/pokemons/index' do
	erb :"pokemons/create"
end

get '/pokemons' do
	@pokemon = Pokemon.all
	erb :"pokemons/index"
end
get'/pokemons/create' do
	erb :"pokemons/create"
end

post '/pokemons' do
  @pokemon = Pokemon.create(params[:pokemon])
  redirect "pokemons/index"
end
