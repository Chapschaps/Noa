class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]


  def show
    @booking.total_price = total_price
  end

  def new
    @booking = Booking.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new(booking_params)

    @booking.user = current_user
    @booking.animal = @animal
    @booking.total_price = total_price
    @booking.status = "requested"
    if @booking.save
      redirect_to dashboard_path
    else
      raise
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
    redirect_to dashboard_path
  end

  private

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
