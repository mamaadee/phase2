class CreateCamps < ActiveRecord::Migration[5.1]
  def change
    create_table :camps do |t|
      t.integer :curriculum_id
      t.integer :location_id
      t.integer :cost
      t.integer :start_date
      t.integer :end_date
      t.string :time_slot
      t.integer :max_students
      t.string :active

      t.timestamps
    end
  end
end
