class Booking < ApplicationRecord
	belongs_to :user
  belongs_to :room
  
  validate :room_booking_criteara

  # retruning all the user booked rooms.
  scope :user_booked_rooms, -> (user) { includes(:user, :room).where(user_id: user) }

  def room_booking_criteara
    if booked_from < Date.today
      errors.add(:booked_from, "You can't be booked room for past date.")
    elsif booked_upto < booked_from
      errors.add(:booked_from, "Please check end date is smaller than start date.")
    elsif booked_from > booked_upto
      errors.add(:booked_from, "Please check start date is greater than end date.")
    elsif booked_from > Date.today + 6.months
    	errors.add(:booked_from, "Booking is available upto 6 months from now.")
    end
  end

  # retruning true or false
  def is_already_booked?
    booking = Booking.find_by_room_id(room_id)
    if booking.present?
      return booked_from.between?(booking.booked_from, booking.booked_upto)
    end
    false
  end
 end
