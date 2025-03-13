class BikesController < ApplicationController

  # before_action :set_bikes, only: []
  def home
  end

  def index
    if params[:query].present?
      @bikes = Bike.search_by_bike_type_and_brand(params[:query])
    else
      @bikes = Bike.all
    end
    # raise

  end

  def show
    @bike = Bike.find(params[:id])
    @order = Order.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if @bike.save
      redirect_to my_bikes_path
    else
      @bikes = Bike.where(user: current_user)
      render "my_bikes/index", status: :unprocessable_entity
    end
  end

  def destroy
    @bike = Bike.find(params[:id])
    @bike.destroy
    redirect_to my_bikes_path, status: :see_other
  end

  private

  def bike_params
    params.require(:bike).permit(:photo, :bike_type, :brand, :year, :color)
  end

  def set_bikes
  end

end
