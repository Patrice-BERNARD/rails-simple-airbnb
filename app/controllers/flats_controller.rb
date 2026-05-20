class FlatsController < ApplicationController
before_action :set_flat, only: [:show]

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(params_flat)
    @flat.save
    redirect_to flat_path(@flat)
  end

  def show

  end

  private

  def params_flat
    params.require(:flat).permit(:name, :address, :description, :number_of_guests, :price_per_night)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end

end
