class Patient < ApplicationRecord
 has_one :staffs
  validates :Patient_name, presence: true, length: {minimum: 7 }
  accepts_nested_attributes_for :staffs
   
end
