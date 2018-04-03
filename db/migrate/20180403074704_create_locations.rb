class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :max_capacity
      t.string :active

      t.timestamps
    end
  end
end
