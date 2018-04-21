class Teacher < ApplicationRecord
  belongs_to :address
  belongs_to :city
  has_many :notes
end
