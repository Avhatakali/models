class User < ApplicationRecord
    validates :first_name, :last_name, presence: true,
    length: { minimum: 5}
end
