
    class Api::V1::ApplicationController < ActionController::API
      include ActionController::MimeResponds
      protect_from_forgery with: :null_session

      before_action :configure_permitted_parameters, if: :devise_controller?

    end
