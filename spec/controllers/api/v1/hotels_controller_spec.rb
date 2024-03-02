require "rails_helper"

RSpec.describe Api::V1::HotelsController, type: :controller do
  let!(:hotel) { FactoryGirl.create(:hotel) }

  it 'Get#Index' do 
    get :index
    expect(response).to have_http_status(200)
  end

  it 'Get#Search' do 
    get :search, params: { hotel: { location: 0 } } 
    expect(response).to have_http_status(200)
  end
end
