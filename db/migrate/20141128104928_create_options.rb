class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :name
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
