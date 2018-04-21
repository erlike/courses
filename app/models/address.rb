class Address < ApplicationRecord
  belongs_to :city
  has_many :companies

end
