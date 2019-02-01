class Vehicle < ApplicationRecord
  validates :make, :model, presence: true,
  length: { minimum: 5 }
end
