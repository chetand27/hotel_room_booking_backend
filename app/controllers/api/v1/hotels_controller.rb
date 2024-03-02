class Api::V1::HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
    render json: @hotels, status: 200
  end

  def search
    if hotels_params[:location] == '-1'
      @hotels = Hotel.all
    else
      @hotels = Hotel.search(hotels_params)
    end

    render json: @hotels, status: 200
  end

  private

  # strong parameters
  def hotels_params
    params.require(:hotel).permit(:location)
  end
end
