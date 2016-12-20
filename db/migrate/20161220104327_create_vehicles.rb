class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :type
      t.string :name
      t.integer :speed
      t.integer :price

      t.timestamps
    end
  end
end
