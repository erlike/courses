class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :rg
      t.string :cpf
      t.references :address, foreign_key: true
      t.string :phone
      t.references :city, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
