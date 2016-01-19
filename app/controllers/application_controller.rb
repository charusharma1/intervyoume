class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :get_requests

 def get_requests
  if current_user
    @requests = current_user.jobseeker_appointments.where(accepted: nil)
  end
 end



  protected
  
  def configure_permitted_parameters
 devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :first_name, :last_name, :password, :job_function) }
 devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :email, :first_name, :last_name, :password, :remember_me) }
 devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :first_name, :last_name, :password, :password_confirmation, :current_password, :job_function) }
 end

end
