class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :series
      t.string :car_type
      t.integer :base_price
      t.integer :year
      t.integer :consumption
      t.string :transmission
      t.string :driving
      t.integer :gears
      t.string :color
      t.integer :doors

      t.timestamps
    end
  end
end
