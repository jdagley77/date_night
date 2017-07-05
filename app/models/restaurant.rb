class Restaurant < ApplicationRecord
	has_many :top_restaurants
	has_many :users, through: :top_restaurants
	
end
