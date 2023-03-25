# does the job of the controller and the router
require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

# User stories:
# As a user I can list all the restaurants DONE
# As a user I can see one restaurant's details DONE

get "/restaurants" do # ROUTER
  @restaurants = Restaurant.all # CONTROLLER
  erb :index # VIEW
end

get "/restaurants/:id" do
  id = params[:id] # params = {id: 10}
  @restaurant = Restaurant.find(id)
  # raise 
  erb :show
end


