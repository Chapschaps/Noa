class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
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

  private

  def animal_params
    params.require(:animal).permit(:name, :age, :size, :specie, :location, :sexe, :risk_factor, :user_id, :description, :price, :available)
  end
end
