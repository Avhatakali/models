class City < ApplicationRecord
  validates :name, :country, presence: true,
  length: { minimum: 4 }
end
