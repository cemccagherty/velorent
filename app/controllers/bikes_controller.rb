class BikesController < ApplicationController

  # before_action :set_bikes, only: []
  def home
  end

  def index
    @bikes = Bike.all
  end

  def show
    @bike = Bike.find(params[:id])
    @order = Order.new
  end

  private

  def bike_params
    params.require(:bike).permit(:type, :brand, :year, :color)
  end

  def set_bikes
  end

end
