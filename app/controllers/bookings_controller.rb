class BookingsController < ApplicationController
  def create
    booking = Booking.new(
      price: params[:price],
      length: params[:length],
      user_id: params[:user_id],
      clown_id: params[:clown_id],
      date: params[:date]
    )
    booking.save
    if booking.save
      render json: { message: "Booking created successfully" }, status: :created
    else
      render json: { errors: Booking.errors.full_messages }, status: :bad_request
    end
  end
  def index
    booking = current_user.bookings
    render json: 
  end
end
