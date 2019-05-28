class BookingsController < ApplicationController
  before_action :set_bookings, only: [:show, :confirm_booking]

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.bicycle = Bicycle.find(params[:bicycle_id])
    @booking.save
  end

  def index
  end

  def confirm_booking
    @booking.confirm!
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_bookings
    @booking = Booking.find(params[:id])
  end
end
