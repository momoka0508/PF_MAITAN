class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # ログイン後遷移先指定
  def after_sign_in_path_for(resource)
    homes_choice_path(resource)
  end

protected
  #deviseへ追加でnameも送られる
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:name])
  end
end
