class CreateInstructors < ActiveRecord::Migration[5.1]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.string :bio
      t.string :email
      t.integer :phone
      t.string :active

      t.timestamps
    end
  end
end
