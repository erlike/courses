class City < ApplicationRecord
  belongs_to :state
  has_many :addresses

  enum status: [:active, :inactive]
  validates :name, presence: true
end
