class AddColumnToCompany < ActiveRecord::Migration[5.1]
  def change
    add_reference :companies, :address, foreign_key: true
  end
end
