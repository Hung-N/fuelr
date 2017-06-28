class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :fuel_type
      t.string :fuel_rating

      t.timestamps
    end
  end
end
