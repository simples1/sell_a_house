class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :house_type
      t.integer :rooms
      t.float :price

      t.timestamps null: false
    end
  end
end
