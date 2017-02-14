require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'db/connection'

# Load models
require_relative 'models/pokemon.rb'

get '/pokemons' do
  @pokemons = Pokemon.all
  erb :"pokemons/index"
end

get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/show"
end
