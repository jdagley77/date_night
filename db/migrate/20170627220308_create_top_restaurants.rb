class CreateTopRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :top_restaurants do |t|
    	t.string :user_id
    	t.string :restaurant_id

      t.timestamps
    end
  end
end
