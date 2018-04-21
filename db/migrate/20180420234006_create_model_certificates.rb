class CreateModelCertificates < ActiveRecord::Migration[5.1]
  def change
    create_table :model_certificates do |t|
      t.string :name
      t.text :template
      t.integer :status

      t.timestamps
    end
  end
end
