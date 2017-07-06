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
		@user = User.find(params[:user_id])
		@restaurant = Restaurant.find(params[:id])
		TopRestaurant.where(user_id: @user.id, restaurant_id: @restaurant.id).destroy_all
	    redirect_to root_path
	end
end


