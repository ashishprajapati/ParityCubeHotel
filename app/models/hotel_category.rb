class HotelCategory < ApplicationRecord
  # adding has_many relationship with hotel_rooms
  # A hotel category can have multiple rooms
  has_many :hotel_rooms, dependent: :destroy
end
