class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :description
      t.integer :num
      t.references :city, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
