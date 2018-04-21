class CreateEnrollments < ActiveRecord::Migration[5.1]
  def change
    create_table :enrollments do |t|
      t.references :student, foreign_key: true
      t.references :class_room, foreign_key: true
      t.integer :roll_number
      t.float :average
      t.float :frequency
      t.integer :faults
      t.integer :final_result
      t.integer :status

      t.timestamps
    end
  end
end
