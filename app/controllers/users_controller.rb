class UsersController < ApplicationController

  def dashboard
    @user = current_user
    @review = Review.new
  end

end
