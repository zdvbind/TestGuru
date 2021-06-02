class ApplicationController < ActionController::Base
  before_action :set_locale
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name email password password_confirmation])
  end

  def after_sign_in_path_for(resource)
    resource.admin? ? admin_tests_path : tests_path
  end

  def default_url_options
    I18n.default_locale == I18n.locale ? {} : { lang: I18n.locale }

  end

  private

  def set_locale

    I18n.locale = I18n.locale_available?(params[:lang]) ? params[:lang] : I18n.default_locale
  end
end
