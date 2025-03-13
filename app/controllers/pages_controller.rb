class PagesController < ApplicationController
  # before_action :set_bikes, only: [:show, :create]
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  # def contact
  # end
end
