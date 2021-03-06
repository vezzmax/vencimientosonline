class ApplicationController < ActionController::Base
  protect_from_forgery
    
  def after_sign_in_path_for(resource)
    if current_user.has_role? :admin then
      "/admin/home"
    elsif current_user.has_role? :root then
      "/admin/root"
    else 
      user_path current_user
    end
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to user_path(current_user), :alert => exception.message
  end

end
