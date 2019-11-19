class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:index, :create]

  def index
    @bookings = current_user.bookings
    raise
  end

  def show
    @booking.total_price = total_price
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

  def total_price
    nb_days = (@booking.ending_date - @booking.starting_date).to_i
    nb_days * @booking.animal.price
  end
end
