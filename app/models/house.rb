class House < ApplicationRecord

  validates :city, :has_garage, presence: true,
  length: { minimum: 3 } 
end
