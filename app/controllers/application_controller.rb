class ApplicationController < ActionController::Base
  protect_from_forgery

  def index

  end

  protected

  def current_user
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
