class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def find_for_database_authentication(conditions)
    login = conditions.delete(:login)
    where(conditions).where(["email = :value OR username = :value", { value: login }]).first
  end
end
