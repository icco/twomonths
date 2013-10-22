class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end

  def current_user
    if session[:user_id].nil?
      return nil
    end

    return User.find_by_id(session[:user_id])
  end

  def current_user= user
    if user.is_a? User
      session[:user_id] = user.id
    elsif user.is_a? Integer
      session[:user_id] = user
    else
      session[:user_id] = nil
    end
  end
end
