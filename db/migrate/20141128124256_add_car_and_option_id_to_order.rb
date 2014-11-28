class AddCarAndOptionIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :car_id, :integer
    add_column :orders, :option_id, :integer
  end
end
