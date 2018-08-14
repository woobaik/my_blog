class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:signup, keys: [:name])
    devise_parameter_sanitizer.permit(:registration, keys: [:name])
  end
  include SetSource
  include CurrentUserConcern

  def current_user
    super || guest = OpenStruct.new(name: "Guest User", lastname: "Guest", firstname: "User", email: "pglossy@gmail.com")
  end
end
