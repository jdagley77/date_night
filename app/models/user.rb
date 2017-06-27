class User < ApplicationRecord
	has_secure_password

	has_many :toprestaurants
	has_many :restaurants, through: :toprestaurants
end
