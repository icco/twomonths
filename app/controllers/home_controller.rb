class HomeController < ApplicationController
  def index
    @user = self.current_user
    if @user
      render 'logged_in'
    else
      render 'index'
    end
  end
end
