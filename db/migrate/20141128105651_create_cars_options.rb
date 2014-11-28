class CreateCarsOptions < ActiveRecord::Migration
  def change
    create_table :cars_options, :id => false do |t|
      t.integer :car_id
      t.integer :option_id
    end

    add_index :cars_options, :car_id
    add_index :cars_options, :option_id
  end
end
