# == Schema Info
#
# Table name: hotel_categories
#
# id                         :integer(11), not null, primary key
# name                       :string
# price                      :decimal, precision(8), scale(2)
# created_at                 :datetime, not null
# updated_at                 :datetime, not null

class HotelCategory < ApplicationRecord
  # adding has_many relationship with hotel_rooms
  # A hotel category can have multiple rooms
  has_many :hotel_rooms, dependent: :destroy
end
