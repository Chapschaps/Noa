class AnimalsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @animals = Animal.all
  end

  def show
    @animals = Animal.all
    @animal = Animal.find(params[:id])
    @booking = Booking.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.save
    redirect_to animal_path(@animal)
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.delete
    redirect_to animals_path
  end

  def booking_confirmation
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :age, :size, :specie, :location, :sexe, :risk_factor, :user_id, :description, :price, :available)
  end

end
