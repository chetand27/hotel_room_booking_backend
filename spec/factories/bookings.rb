FactoryGirl.define do
  factory :booking do
    booked_from DateTime.now.strftime('%Y-%m-%d')
    booked_upto 2.days.since.strftime('%Y-%m-%d')
  end
end
