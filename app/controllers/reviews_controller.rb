class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    authorize @review

    if @review.save
      redirect_to bicycle_path(@review.booking.bicycle)
    else
      redirect_to bookings_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
