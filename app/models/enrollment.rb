class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :class_room
  has_many :notes
end
