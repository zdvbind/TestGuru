class Users::SessionsController < Devise::SessionsController
  def create
    super
    flash[:notice] = "#{t('flash.hello')}, #{current_user.first_name}!"
  end
end
