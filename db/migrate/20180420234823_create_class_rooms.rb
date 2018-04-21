class CreateClassRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :class_rooms do |t|
      t.string :name
      t.references :course, foreign_key: true
      t.references :city, foreign_key: true
      t.references :address, foreign_key: true
      t.date :begin
      t.date :end
      t.integer :status

      t.timestamps
    end
  end
end
