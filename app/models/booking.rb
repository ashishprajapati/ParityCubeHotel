class Booking < ApplicationRecord
  # adding belongs to relationship with hotel_room
  belongs_to :hotel_room
  # adding belongs to relationship with user
  belongs_to :user
end
