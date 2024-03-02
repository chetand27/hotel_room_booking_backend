class Hotel < ApplicationRecord
  # in future we can use seperate model to store locations now i'm using locations enum.
  enum location: [ :pune, :mumbai, :nashik, :banglore, :hydrabad ].freeze

  has_many :rooms
  # search method use { key: value } to return the response.
  scope :search, -> (params) { where(params) }
end
