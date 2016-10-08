# == Schema Info
#
# Table name: bookings
#
# id                         :integer(11), not null, primary key
# check_in                   :date
# check_out                  :date
# hotel_room_id              :integer(11)
# user_id                    :integer(11)
# created_at                 :datetime, not null
# updated_at                 :datetime, not null

class Booking < ApplicationRecord
  # adding belongs to relationship with hotel_room
  belongs_to :hotel_room
  # adding belongs to relationship with user
  belongs_to :user
end
