class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :Restaurant
      t.string :TopRestaurant

      t.timestamps
    end
  end
end
