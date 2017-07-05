class TopRestaurantsController < ApplicationController
	
	def new
		@toprestaurant = TopRestaurant.new
	end

	def create
		@restaurant = Restaurant.find(params[:restaurant_id])
	    @toprestaurant = TopRestaurant.create(user_id: params[:user_id], restaurant_id: params[:restaurant_id])
	    redirect_to root_path
	end
	  
end
