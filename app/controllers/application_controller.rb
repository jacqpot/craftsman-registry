class ApplicationController < ActionController::Base
    before_action :configure_permitted_perameters, if: :devise_controller? 

    protected

    def configure_permitted_perameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone_number, :state, :city, :avalible])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone_number, :state, :city, :avalible])


    end

end
