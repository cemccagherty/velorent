class MyBikesController < ApplicationController
  def index
    @bikes = Bike.where(user: current_user)
  end
end
