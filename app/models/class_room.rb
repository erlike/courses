class ClassRoom < ApplicationRecord
  belongs_to :course
  belongs_to :city
  belongs_to :address
end
