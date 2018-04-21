class CreateGrids < ActiveRecord::Migration[5.1]
  def change
    create_table :grids do |t|
      t.string :name
      t.references :course, foreign_key: true
      t.references :course_module, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
