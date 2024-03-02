FactoryGirl.define do
  factory :room do
    room_number 'E10'
    hotel_id nil
    description 'queen size bed, pool facing with a gym'
    charged_per_night 2000
    status 'available'
  end
end
