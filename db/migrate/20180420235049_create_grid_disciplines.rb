class CreateGridDisciplines < ActiveRecord::Migration[5.1]
  def change
    create_table :grid_disciplines do |t|
      t.references :grid, foreign_key: true
      t.references :discipline, foreign_key: true
      t.integer :at
      t.integer :ap
      t.integer :est
      t.integer :status

      t.timestamps
    end
  end
end
