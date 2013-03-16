class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)
  	if current_user.has_role? :admin then
  		redirect_to "http://www.google.com"
  	else 
  		#redirect_to "http://www.google.com"
  		user_path current_user
  	end
  	return
  end
end
