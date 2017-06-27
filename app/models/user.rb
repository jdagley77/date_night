class User < ApplicationRecord
	has_secure_password
<<<<<<< Updated upstream
=======

	has_many :top_restaurants
	has_many :restaurants, through: :top_restaurants
>>>>>>> Stashed changes
end
