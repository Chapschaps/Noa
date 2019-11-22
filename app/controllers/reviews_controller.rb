class ReviewsController < ApplicationController

  def new
    @animal = Animal.find(params[:animal_id])
    @review = Review.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @review = Review.new(review_params)
    @review.animal = @animal
    @review.user = current_user
    if @review.save
      redirect_to animal_path(@animal)
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
