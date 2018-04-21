class CreateCourseModules < ActiveRecord::Migration[5.1]
  def change
    create_table :course_modules do |t|
      t.string :name
      t.text :description
      t.integer :status

      t.timestamps
    end
  end
end
