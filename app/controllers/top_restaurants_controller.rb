class TopRestaurantsController < ApplicationController
	
	def new
		@toprestaurant = TopRestaurant.new
	end

	def create
		@restaurant = Restaurant.find(params[:restaurant_id])
	    @toprestaurant = TopRestaurant.create(user_id: params[:user_id], restaurant_id: params[:restaurant_id])
	    redirect_to root_path
	end

	def destroy
	    # user = User.find(params[:user_id])
	    # restaurant = user.restaurants.find(params[:restaurant_id])
	    # top_restaurant = TopRestaurant.find(user_id: params[:user_id], restaurant_id: params[:restaurant_id])
	    # user.restaurants.delete(restaurant) if restaurant
	    # redirect_to root_path
	end
end


