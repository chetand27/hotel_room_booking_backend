class Room < ApplicationRecord
  enum status: [ :available, :booked ].freeze

  belongs_to :hotel
  has_many :bookings, class_name: 'Booking'
  has_many :users, class_name: 'User', through: :bookings

  validates :room_number, :description, :charged_per_night, presence: true
 
  # returns all rooms
  scope :available_rooms, -> (hotel_id) { where('hotel_id = ? and status = ?', hotel_id, 0) }
end
