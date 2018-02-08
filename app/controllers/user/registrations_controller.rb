class User::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:company_name, :email, :password, :password_confirmation, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:company_name, :email, :password, :password_confirmation, :role])
  end
end