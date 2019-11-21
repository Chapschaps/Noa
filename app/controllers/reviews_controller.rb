class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create

    @animal = Booking.find(params[:booking_id]).animal
    @review = Review.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to dashboard_path(current_user)
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
