class SessionsController < ApplicationController
  def new
  end

  def create
    if params['provider'] == :identity
      p request.env["omniauth.auth"].info["username"]
    end

    user = User.find_or_create_from_auth_hash(env["omniauth.auth"])
    self.current_user = user

    if self.current_user
      redirect_to '/', notice: "Logged in."
    else
      destroy
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/', notice: "Signed out!"
  end

  def failure
    redirect_to '/', alert: "Authentication failed, please try again."
  end
end
