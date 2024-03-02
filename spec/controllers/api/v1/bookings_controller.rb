require "rails_helper"

RSpec.describe Api::V1::BookingsController, type: :controller do
  let(:user) { FactoryGirl.create(:user) }
  let(:hotel) { FactoryGirl.create(:hotel) }
	let(:room) { FactoryGirl.create(:room, hotel_id: hotel.id) }
  let!(:booking) { FactoryGirl.create(:booking, room_id: room.id, user_id: user.id) }
  let(:valid_params) do {
      booked_from: DateTime.now.strftime('%Y-%m-%d'),
      booked_upto: 2.days.since.strftime('%Y-%m-%d'),
    }
  end
  let(:invalid_params) do {
      booked_from: 2.days.ago.strftime('%Y-%m-%d'),
      booked_upto: 2.days.since.strftime('%Y-%m-%d'),
    }
  end

  it 'Get#Index' do
    get :index
    expect(response).to have_http_status(200)
  end

  it 'Get#Show' do 
    get :show, params: {id: booking.id }
    expect(response).to have_http_status(200)
  end

  context 'Create' do
    it 'with valid arguments' do
      post :create, params: { room_ids: [room.id], hotel_id: hotel.id, booking: valid_params }
      expect(response).to have_http_status(200)
    end

    it 'with invalid arguments' do
      post :create, params: { room_ids: [room.id], hotel_id: hotel.id, booking: invalid_params }
      res = JSON.parse(response.body)
      expect(res['message']).to eq("Booked from You can't be booked room for past date.")
    end
  end

  context 'Update' do
    it 'with valid arguments' do
      put :update, params: { id: booking.id, booking: valid_params }
      expect(response).to have_http_status(200)
    end

    it 'with invalid arguments' do
      put :update, params: { id: booking.id, booking: invalid_params }
      res = JSON.parse(response.body)
      expect(res['message']).to eq("Booked from You can't be booked room for past date.")
    end
  end
end
