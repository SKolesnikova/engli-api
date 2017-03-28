class ApplicationController < ActionController::API
  protect_from_forgery with: :null_session

  before_action :configure_permitted_parameters, if: :devise_controller?

end
