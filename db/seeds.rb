require 'json'

User.destroy_all
Restaurant.destroy_all

20.times.map do
  User.create!( :name       => Faker::Internet.user_name,
                :email      => Faker::Internet.email,
                :password   => 'a' )
end