class OrdersController < ApplicationController
  # before_action :set_user, only: [:index]
  def index
    @orders = Order.where(user: current_user)
  end

  
  def show

  end

  def create
    @bike = Bike.find(params[:bike_id])
    @user = current_user
    @order = Order.new(order_params)
    @order.user = @user
    @order.bike = @bike
    if @order.save
      redirect_to root_path
    else
      redirect_to bikes_path(@bike), status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).permit(:rental_date)
  end

  def set_user
    @user = current_user
  end
end
