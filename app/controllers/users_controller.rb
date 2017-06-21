class UsersController < ApplicationController
	has_many :toprestaurants
	has_many :restaurants, through: :toprestaurants
end
