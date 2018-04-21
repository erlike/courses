class Note < ApplicationRecord
  belongs_to :enrollment
  belongs_to :grid_discipline
  belongs_to :teacher
end
