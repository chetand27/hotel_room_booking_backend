# user data created to book a room from a hotels
users = [
  { first_name: 'chetan', last_name: 'dhatrak', email: 'cd@gmail.com', phone_number: '9881647880' },
  { first_name: 'sagar', last_name: 'nagare', email: 'sn@gmail.com', phone_number: '9876543210' },
].freeze

User.create!(users)

# hotels data created for user to select a hotels for room booking
hotels = [
  { name: 'Crowne Plaza', email: 'crowneplaza@gmail.com', phone_number: '8000501395', location: 0, stars: '4' },
  { name: 'Hotel Aurora Towers', email: 'hotelaurora@gmail.com', phone_number: '9876543210', location: 0, stars: '4' },
  { name: 'Hotel Parc Estique', email: 'hotelparc@gmail.com', phone_number: '9881647777', location: 1, stars: '4' },
  { name: 'Oxford Golf', email: 'og@gmail.com', phone_number: '9881647888', location: 1, stars: '4' },
  { name: 'Fairfield', email: 'fairfield@gmail.com', phone_number: '9881647899', location: 2, stars: '4' },
].freeze

Hotel.create!(hotels)

# create rooms for hotels
rooms = [
 { room_number: 'A01', hotel_id: 1, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'A02', hotel_id: 1, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'A03', hotel_id: 1, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'A04', hotel_id: 1, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'A05', hotel_id: 1, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'B01', hotel_id: 1, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'B02', hotel_id: 1, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'B03', hotel_id: 1, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'B04', hotel_id: 1, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'B05', hotel_id: 1, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'C01', hotel_id: 2, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'C02', hotel_id: 2, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'C03', hotel_id: 2, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'C04', hotel_id: 2, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'C05', hotel_id: 2, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'D01', hotel_id: 2, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'D02', hotel_id: 2, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'D03', hotel_id: 2, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'D04', hotel_id: 2, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'D05', hotel_id: 2, description: 'queen size bed', charged_per_night: 7000.00 },
 { room_number: 'A06', hotel_id: 3, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'A07', hotel_id: 3, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'A08', hotel_id: 3, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'A09', hotel_id: 3, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'A10', hotel_id: 3, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'B06', hotel_id: 3, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'B07', hotel_id: 3, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'B08', hotel_id: 3, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'B09', hotel_id: 3, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'B10', hotel_id: 3, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'C06', hotel_id: 4, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'C07', hotel_id: 4, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'C08', hotel_id: 4, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'C09', hotel_id: 4, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'C10', hotel_id: 4, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'D06', hotel_id: 5, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'D07', hotel_id: 5, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'D08', hotel_id: 5, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'D09', hotel_id: 5, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'D10', hotel_id: 5, description: 'queen size bed and pool facing', charged_per_night: 8500.00 },
 { room_number: 'D12', hotel_id: 5, description: 'queen size bed and pool facing', charged_per_night: 12000.00 },
 { room_number: 'D13', hotel_id: 5, description: 'queen size bed and pool facing', charged_per_night: 12000.00 },
 { room_number: 'D14', hotel_id: 5, description: 'queen size bed and pool facing', charged_per_night: 12000.00 },
 { room_number: 'D15', hotel_id: 5, description: 'queen size bed and pool facing', charged_per_night: 12000.00 },
 { room_number: 'D16', hotel_id: 5, description: 'queen size bed and pool facing', charged_per_night: 12000.00 },
 { room_number: 'D17', hotel_id: 5, description: 'queen size bed and pool facing', charged_per_night: 12000.00 },
 { room_number: 'D18', hotel_id: 5, description: 'queen size bed and pool facing', charged_per_night: 12000.00 },
 { room_number: 'D19', hotel_id: 5, description: 'queen size bed and pool facing', charged_per_night: 12000.00 },
 { room_number: 'D20', hotel_id: 5, description: 'queen size bed and pool facing', charged_per_night: 12000.00 },
 { room_number: 'E01', hotel_id: 4, description: 'queen size bed and pool facing', charged_per_night: 12000.00 },
 { room_number: 'E02', hotel_id: 4, description: 'queen size bed and pool facing', charged_per_night: 12000.00 },
 { room_number: 'E03', hotel_id: 4, description: 'queen size bed, pool facing with a gym', charged_per_night: 20000.00 },
 { room_number: 'E04', hotel_id: 4, description: 'queen size bed, pool facing with a gym', charged_per_night: 20000.00 },
 { room_number: 'E05', hotel_id: 4, description: 'queen size bed, pool facing with a gym', charged_per_night: 20000.00 },
 { room_number: 'E06', hotel_id: 4, description: 'queen size bed, pool facing with a gym', charged_per_night: 20000.00 },
 { room_number: 'E07', hotel_id: 4, description: 'queen size bed, pool facing with a gym', charged_per_night: 20000.00 },
 { room_number: 'E08', hotel_id: 4, description: 'queen size bed, pool facing with a gym', charged_per_night: 20000.00 },
 { room_number: 'E09', hotel_id: 4, description: 'queen size bed, pool facing with a gym', charged_per_night: 20000.00 },
 { room_number: 'E10', hotel_id: 4, description: 'queen size bed, pool facing with a gym', charged_per_night: 20000.00 }
].freeze

Room.create!(rooms)
