class SessionsController < ApplicationController
  def new
  end

  def create
    username = params['username'] || params['auth_key']

    if request['password_confirmation']
      if request['password'] != request['password_confirmation']
        failure
      end
    end

    begin
      @user = User.login(username, request['password'])
      self.current_user = @user
    rescue RuntimeError => e
      p e
    end

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
