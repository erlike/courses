class Course < ApplicationRecord
  belongs_to :type_course
  belongs_to :model_certificate
  has_many :grids
end
