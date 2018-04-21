class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.references :enrollment, foreign_key: true
      t.references :grid_discipline, foreign_key: true
      t.float :note1
      t.float :note2
      t.float :note3
      t.float :note4
      t.float :note5
      t.float :internship
      t.float :recovery
      t.float :average
      t.float :frequency
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
