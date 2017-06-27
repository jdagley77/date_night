class Restaurant < ApplicationRecord
	has_many :toprestaurants
	has_many :users, through: :toprestaurants
	
end
