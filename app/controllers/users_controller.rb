class UsersController < ApplicationController

  def index
    404
  end

  def show
    @user = User.find_by_username(params['id'])
  end

  def edit
    @user = User.find_by_username(params['id'])
    if @user != self.current_user
      404
    end
  end

  def update
    p params
  end

  def new
    404
  end

  def create
    404
  end

  def me
    if self.current_user
      redirect_to url_for(:id => self.current_user.username, :controller => 'users', :action => 'show')
    else
      404
    end
  end
end
