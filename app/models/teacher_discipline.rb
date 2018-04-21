class TeacherDiscipline < ApplicationRecord
  belongs_to :teacher
  belongs_to :class_room
  belongs_to :grid
  belongs_to :discipline
end
