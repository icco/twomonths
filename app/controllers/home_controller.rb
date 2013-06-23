class HomeController < ApplicationController
  def index
    @user = self.current_user
    if @user

      p @user.updates
      @user.goals.each {|g| p g.updates }

      if @user.goals.empty?
        redirect_to url_for :controller => 'goals', :action => 'new'
      else
        render 'logged_in'
      end
    else
      render 'index'
    end
  end
end
