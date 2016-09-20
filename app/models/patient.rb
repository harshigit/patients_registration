class Patient < ApplicationRecord
has_many :Staff
validates :Staff_identity, presence: true, length: {minimum: 3 }
end
