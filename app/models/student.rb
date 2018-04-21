class Student < ApplicationRecord
  belongs_to :scholarity
  belongs_to :address
  has_many :enrollments
end
