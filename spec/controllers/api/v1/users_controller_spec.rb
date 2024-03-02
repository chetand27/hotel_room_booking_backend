require "rails_helper"

RSpec.describe Api::V1::UsersController, type: :controller do
	let!(:user) { FactoryGirl.create(:user) }

  it 'Get#Index' do 
    get :index
    body = JSON.parse(response.body)
    expect(body['id']).to eq(user.id)
    expect(response).to have_http_status(200)
  end
end
