class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @animals = Animal.search_by_location(params[:query])
    else
      @animals = Animal.geocoded
    end
    @markers = @animals.map do |animal|
      {
        lat: animal.latitude,
        lng: animal.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { animal: animal })
      }
    end
  end

  def show
    @animals = Animal.geocoded
    @animal = Animal.find(params[:id])
    @booking = Booking.new
    @markers =
     [{
        lat: @animal.latitude,
        lng: @animal.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { animal: @animal })
      }]
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user
    @animal.save
    redirect_to animal_path(@animal)
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update(animal_params)
    if @animal.save
      redirect_to animal_path(@animal)
    else
      render :edit
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    if @animal.bookings.present?
      flash[:alert] = "You can't delete this animal because it has bookings"
      redirect_to animals_path
    else
      @animal.delete
      flash[:notice] = "Animal deleted"
      redirect_to animals_path
    end
  end

  # def booking_confirmation
  #   require 'date'
  #   @animal = Animal.find(params[:animal_id])
  #   @booking = Booking.new
  #   @price = params[:ending_day]
  # end

  private

  def animal_params
    params.require(:animal).permit(:name, :age, :size, :specie, :location, :sexe, :photo, :risk_factor, :user_id, :description, :price, :available, :starting_date, :ending_date, :query)
  end
end
