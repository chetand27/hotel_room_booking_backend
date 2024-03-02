class Api::V1::RoomsController < ApplicationController
  def index
    available_rooms_options = []
    Room.available_rooms(params[:hotel_id]&.to_i).each do |room|
      available_rooms_options << { value: room.id, label: room.room_number}
    end
    render json: available_rooms_options, status: 200
  end
end
