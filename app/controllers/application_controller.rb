class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name email password password_confirmation])
  end

  def after_sign_in_path_for(resource)
    resource.admin? ? admin_tests_path : tests_path
  end
end
