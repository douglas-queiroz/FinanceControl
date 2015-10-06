class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def verify_login
    if session["user_name"].nil?
      redirect_to :controller => "home", :action => "login"
    end
  end
end
