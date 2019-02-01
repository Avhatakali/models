class Company < ApplicationRecord
  validates :name, :industry, presence: true,
  length: { minimum: 5 }
end
