class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :rg
      t.string :cpf
      t.date :birth
      t.references :scholarity, foreign_key: true
      t.string :photo
      t.string :phone
      t.references :address, foreign_key: true
      t.integer :gender
      t.integer :status

      t.timestamps
    end
  end
end
