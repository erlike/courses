class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.string :name
      t.string :initials
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
