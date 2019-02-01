class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :city
      t.integer :number_of_rooms
      t.boolean :has_garage

      t.timestamps
    end
  end
end
