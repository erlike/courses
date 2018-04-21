class CreateTeacherDisciplines < ActiveRecord::Migration[5.1]
  def change
    create_table :teacher_disciplines do |t|
      t.references :teacher, foreign_key: true
      t.references :class_room, foreign_key: true
      t.references :grid, foreign_key: true
      t.references :discipline, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
