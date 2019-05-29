class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.booking_id = current_user.id
    if @review.save
      redirect_to bicycle_path(@review.booking.bicycle)
    else
      alert('yooooo')
    end
  end

  def edit
  end

  def update
  end

  def index
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
