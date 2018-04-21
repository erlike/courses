class Grid < ApplicationRecord
  belongs_to :course
  belongs_to :course_module
  has_many :grid_disciplines
end
