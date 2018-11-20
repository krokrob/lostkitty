class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @found_pets = Pet.where(found_by_owner: true)
    @lost_pets = Pet.where(found_by_owner: nil)
  end

  def show
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save
    redirect_to pets_path
  end

  def new
    @pet = Pet.new
  end

  def edit
  end

  def update
    # get info from the form => pet_params
    # get @pet to update thanks to its ID
    @pet.update(pet_params)
    # save in DB
    redirect_to pets_path
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:breed, :date_found, :found_by_owner)
  end
end
