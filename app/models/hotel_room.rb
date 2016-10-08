# == Schema Info
#
# Table name: hotel_rooms
#
# id                         :integer(11), not null, primary key
# name                       :string
# max_adults                 :integer(11)
# max_children               :integer(11)
# hotel_category_id          :integer(11)
# created_at                 :datetime, not null
# updated_at                 :datetime, not null

class HotelRoom < ApplicationRecord
  # adding belongs to relationship with hotel_category
  belongs_to :hotel_category
  # has_many relationship with the bookings
  # fetching all the bookings of the hotel room
  has_many :bookings

  # These attributes should always be present
  validates :name, :max_adults, :max_children, :hotel_category_id, presence: true
end
