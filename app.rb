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

get '/pokemons/:id' do
	@pokemon = Pokemon.find(params[:id])
	erb :"pokemons/show"
end

get "/pokemons/:id/edit" do 
	@pokemon = Pokemon.find(params[:id])
	erb(:"pokemons/edit")
end

put '/pokemons/:id' do 
	@pokemon = pokemon.find(params[:id])
	@pokemon.update(params[:id])
	redirect("/pokemons/#{@pokemon.id}")
end

delete '/pokemons/:id' do
  @pokemon = pokemon.find(params[:id])
  @pokemon.destroy
  redirect("/pokemons")
end



