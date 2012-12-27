class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def store_location
    session[:return_to] = request.fullpath
  end
  
  def stored_location_for(resource)
    session[:return_to]
  end
  
  def after_sign_up_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || root_path
  end
  
  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || root_path
  end
  
end
