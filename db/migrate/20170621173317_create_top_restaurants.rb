class CreateTopRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :top_restaurants do |t|

      t.timestamps
    end
  end
end
