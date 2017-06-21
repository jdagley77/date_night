class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
    	t.string :name
    	t.string :image_url
    	t.string :url
    	t.string :phone

      t.timestamps
    end
  end
end
