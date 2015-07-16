class Petname < ActiveRecord::Base
  has_one :species
  
  validates :name, presence: true, length: 1..26
  validates :species, presence: true

end
