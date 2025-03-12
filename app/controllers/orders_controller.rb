class OrdersController < ApplicationController

  def create
    @bike = Bike.find(params[:bike_id])
    @user = current_user
    @order = Order.new
    @order.user = @user
    @order.bike = @bike
    if @order.save
      redirect_to bikes_path
    else
      render bikes_path, status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).permit(:bike_id, :user_id, :rental_date)
  end
end
