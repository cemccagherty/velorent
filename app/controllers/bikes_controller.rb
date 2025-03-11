class BikesController < ApplicationController
  # before_action :set_bikes, only: []
  def home
  end

  def show
    @bike = Bike.find(params(:id))
  end

  private

  def bike_params
    params.require(:bike).permit(:type, :brand, :year, :color)
  end

  def set_bikes
    @bikes = Bike.all
  end
end
