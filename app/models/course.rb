class Course < ApplicationRecord

  validates :name, :subject, :professor,
  length: { minimum: 4 }
end
