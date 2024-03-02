require "rails_helper"

RSpec.describe Api::V1::RoomsController, type: :controller do
  let(:hotel) { FactoryGirl.create(:hotel) }
	let!(:room) { FactoryGirl.create(:room, hotel_id: hotel.id) }

  it 'Get#Index' do 
    get :index, params: { hotel_id: hotel.id }
    expect(response).to have_http_status(200)
  end
end
