class State < ActiveRecord::Base
  belongs_to :country

  validates_length_of :name, :is => 3, :allow_blank => false
  validates_length_of :initials, :is => 2, :allow_blank => false
  
end
