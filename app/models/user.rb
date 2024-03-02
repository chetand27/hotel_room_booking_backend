class User < ApplicationRecord
  has_many :bookings, class_name: 'Booking'
  has_many :rooms, class_name: 'Room', through: :bookings

  validates :first_name, :last_name, :phone_number, presence: true
  validates :phone_number, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }
end
