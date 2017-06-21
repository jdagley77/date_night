class RestaurantsController < ApplicationController
	has_many :toprestaurants
	has_many :toprestaurants, through: :users
end
