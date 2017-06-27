class User < ApplicationRecord
	has_secure_password
  
	has_many :top_restaurants
	has_many :restaurants, through: :top_restaurants

end
