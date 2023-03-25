require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/movies" do
  @movies = Movie.all
  erb :index
end

get "/movies/:id" do
  id = params[:id] # params = {"id"=>"10"}
  @movie = Movie.find(id)
  # raise
  erb :show
end



# SILO -> 
# DB/MODEL: 
# ROUTER - CONTROLLER - VIEWS