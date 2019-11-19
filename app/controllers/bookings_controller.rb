class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = @user.bookings
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.animal = @animal
    if @booking.save
      redirect_to dashboard_path
    else
      redirect_to root_path
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

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:animal, :user, :status, :starting_date, :ending_date)
  end
end
