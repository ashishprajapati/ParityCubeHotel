class HotelRoom < ApplicationRecord
  # adding belongs to relationship with hotel_category
  belongs_to :hotel_category
  # has_many relationship with the bookings
  # fetching all the bookings of the hotel room
  has_many :bookings
end
