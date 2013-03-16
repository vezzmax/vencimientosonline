class ApplicationController < ActionController::Base
  protect_from_forgery

=begin
before_filter :store_location

  def store_location
    unless params[:controller] == "devise/sessions"
      if warden.user.has_role? :admin then
        url = "http://www.google.com"
      else 
        url = user_path current_user
      end
      session[:user_return_to] = url
    end
  end

  def stored_location_for(resource_or_scope)
    session[:user_return_to] || super
  end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || root_path
  end
=end
  def after_sign_in_path_for(resource)
    if current_user.has_role? :admin then
      "/admin/home"
    elsif 
      user_path current_user
    end
  end

end
