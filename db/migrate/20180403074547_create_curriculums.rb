class CreateCurriculums < ActiveRecord::Migration[5.1]
  def change
    create_table :curriculums do |t|
      t.string :name
      t.string :description
      t.integer :min_rating
      t.integer :max_rating
      t.string :active

      t.timestamps
    end
  end
end
