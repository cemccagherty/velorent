class MyBikesController < ApplicationController
  def index
    @bikes = Bike.where(user: current_user)
    @bike = Bike.new
  end
end
