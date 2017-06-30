require 'json'

User.destroy_all
Restaurant.destroy_all

20.times.map do
  User.create!( :name       => Faker::Internet.user_name,
                :email      => Faker::Internet.email,
                :password   => 'a' )
end

json = JSON.parse(File.read('restaurant_collection.json'))

json.each do |restaurant| 
	@restaurant = Restaurant.new
	@restaurant[:name] = restaurant['name']
	@restaurant[:image_url] = restaurant['image_url']
	@restaurant[:url] = restaurant['url']
	@restaurant[:phone] = restaurant['phone']
	@restaurant[:rating] = restaurant['rating']
	@restaurant[:price] = restaurant['price']
	@restaurant.save
end