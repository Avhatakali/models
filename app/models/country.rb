class Country < ApplicationRecord
  validates :name, :part_of_africa, presence: true,
  length: { minimum: 4 }
end
