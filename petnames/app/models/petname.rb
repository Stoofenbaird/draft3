class Petname < ActiveRecord::Base
  validates :name, presence: true, length: 1..26
end
