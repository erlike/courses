class CreateTypeCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :type_courses do |t|
      t.string :name
      t.integer :status

      t.timestamps
    end
  end
end
