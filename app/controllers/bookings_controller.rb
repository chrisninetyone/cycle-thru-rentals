class BookingsController < ApplicationController

  before_action :set_bookings, only: [:show, :confirm_booking]

  def show
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.bicycle = Bicycle.find(params[:bicycle_id])
    authorize @booking
    @booking.user = current_user
    if check_user?
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

  def check_user?
    @bicycle = Bicycle.find(params[:bicycle_id])
    @bicycle.user_id != current_user.id
  end
end
