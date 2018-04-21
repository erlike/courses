class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.references :type_course, foreign_key: true
      t.references :model_certificate, foreign_key: true
      t.integer :number_modules
      t.float :average
      t.float :frequency
      t.integer :status

      t.timestamps
    end
  end
end
