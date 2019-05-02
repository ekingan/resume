class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.string :name
      t.string :location
      t.string :experience_type
      t.text :description
      t.belongs_to :resume, foreign_key: true

      t.timestamps
    end
  end
end
