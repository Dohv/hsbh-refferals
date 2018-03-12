class User::RegistrationsController < Devise::RegistrationsController
  protect_from_forgery prepend: true
  before_action :configure_permitted_parameters

  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :company_id, :email, :password, :password_confirmation, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_name, :company_id, :email, :password, :password_confirmation, :role])
  end
end