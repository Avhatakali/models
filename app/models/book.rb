class Book < ApplicationRecord
  validates :title, :author, presence: true,
   length: { minimum: 5 }
end
