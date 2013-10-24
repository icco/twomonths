class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate
    redirect_to :login unless self.current_user
  end

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end

  def current_user
    if session[:user_id].nil?
      return nil
    end

    return User.find_by_id(session[:user_id])
  end

  rescue_from Exception do |e|
    error(e)
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

   protected

   # http://guides.rubyonrails.org/layouts_and_rendering.html
   def error(e)
     if e.is_a? ActionController::RoutingError
       render file: Rails.root.join('public', '404.html').to_s, layout: false, status: :not_found
     else
       render file: Rails.root.join('public', '500.html').to_s, layout: false, status: :internal_server_error
     end
   end
end
