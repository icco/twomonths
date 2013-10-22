class SessionsController < ApplicationController
  def new
  end

  def create
    username = params['username'] || params['auth_key']
    self.current_user = User.login(username, request['password'])

    if self.current_user
      redirect_to '/', notice: "Logged in."
    else
      failure
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
