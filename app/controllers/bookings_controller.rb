class BookingsController < ApplicationController
  before_action :set_bookings, only: [:show, :confirm_booking]

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.bicycle = Bicycle.find(params[:bicycle_id])
    @booking.user = current_user
    if @booking.bicycle.user != @booking.user
      @booking.save
      redirect_to @booking
    else
      render 'bicycles/show'
    end
  end

  def index
  end

  def confirm_booking
    @booking.confirm!
  end

  private

  def booking_params
    params.require(:booking).permit(:begin_date, :end_date)
  end

  def set_bookings
    @booking = Booking.find(params[:id])
  end
end
