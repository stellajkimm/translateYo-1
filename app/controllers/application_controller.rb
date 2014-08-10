class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  include Authentication

  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    "http://www.google.com" # <- Path you want to redirect the user to.
  end
end
