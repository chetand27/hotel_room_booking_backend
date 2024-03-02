class Api::V1::BookingsController < ApplicationController
  def index
    bookings = Booking.user_booked_rooms(current_user.id)
    render json: bookings, include: [user: {only: [:first_name, :last_name, :phone_number]}, room: {only: [:room_number]}], status: 200
  end

  def create
    errors = []
    bookings = []
    room_ids = params[:room_ids].map(&:to_i)
    
    unless room_ids.any?
      return render json: { message: 'Please select at least one room for booking.' }
    end

    room_ids.each do |room_id|
      booking = Booking.new(booking_params)
      booking.room_id = room_id
      booking.user_id = current_user.id

      unless booking.is_already_booked?
        # check for room booking is saved or not
        if booking.save
          # updates status of room to 'booked'
          booking.room.update_attributes(status: 'booked')
          bookings << booking
        else
          return render json: { message: "#{booking.errors.full_messages.join(" ")}" }
        end
      else
        return render json: { message: 'This room is already booked for selected date, please check other availables rooms.' }
      end      
    end

    render json: bookings, status: 200
  end

  def destroy
    booking = Booking.find_by_id(params[:id]&.to_i)
    booking.room.update_attributes(status: 'available')
    booking.destroy

    render json: {message: 'Deleted successfully'}, status: 200
  end

  private

  # strong parameters
  def booking_params
    params.require(:booking).permit(:user_id ,:room_id, :booked_from, :booked_upto)
  end
end
