class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:index, :create]

  def index
    @bookings = @user.bookings
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = @user
    if @booking.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(params[:booking])
  end

  def destroy
    @booking.destroy
  end

  private

  def set_user
    @user = User.find(params([:user_id]))
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:animal, :user, :status, :starting_date, :ending_date)
  end
end
