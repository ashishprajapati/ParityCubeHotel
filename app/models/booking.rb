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

  # These attributes should always be present
  validates :check_in, :check_out, :hotel_room_id, :user_id, presence: true

  # Custom valudation for check in date
  # Check in date cannot be in the past
  validate :check_in_cannot_be_in_the_past

  # Custom valudation for check out date
  # Check out date should not be less than check in date
  validate :check_out_should_be_less_than_check_in

  # Custom Validation for limiting the booking for 6 months
  # Allows booking up to 6 months in advance for room reservations
  validate :check_out_cannot_be_more_than_6_months

  # Method for allowing booking only up to 6 months
  def check_out_cannot_be_more_than_6_months
    if check_out.present? && check_out > Date.today+6.months
      errors.add(:check_out, "can't be more than 6 months")
    end
  end 

  # Method for validating check out date 
  # check_out date should be less than check_in date
  def check_out_should_be_less_than_check_in
    if check_out < check_in
      errors.add(:check_out, "can't be less than check in date")
    end
  end 

  # Method for validating check in date 
  # check_in date cannot be in the past
  def check_in_cannot_be_in_the_past
    if check_in.present? && check_in < Date.today
      errors.add(:check_out, "can't be in the past")
    end
  end 
end
