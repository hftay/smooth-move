class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :logged_in?
  helper_method :store_route

  def current_user
    User.find_by(id: session[:user_id]) # find only finds by id
  end

  def logged_in?
    !!current_user #will return true or false
    if current_user
      return true
    else
      return false
    end
  end

  def store_route route
    session[:previous_route] = route
  end

  private

  def authenticate
    if !current_user
      redirect_to '/login'
    end
  end
end
