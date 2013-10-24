class UsersController < ApplicationController

  def index
    not_found
  end

  def show
    @user = User.find_by_username(params['id'])
  end

  def edit
    before_filter :authenticate

    @user = User.find_by_username(params['id'])
    if @user != self.current_user
      not_found
    end
  end

  def update
    @user = User.find_by_username(params['id'])
    if @user != self.current_user or @user.id != params["user"]["id"].to_i
      not_found
    else
      @user.telephone = params["user"]["telephone"] if !params["user"]["telephone"].empty?
      @user.email = params["user"]["email"] if !params["user"]["email"].empty?

      if @user.valid?
        @user.save
      else
        p @user.errors
      end

      redirect_to url_for(:id => self.current_user.username, :controller => 'users', :action => 'show')
    end
  end

  def new
    not_found
  end

  def create
    not_found
  end

  def me
    before_filter :authenticate

    if self.current_user
      redirect_to url_for(:id => self.current_user.username, :controller => 'users', :action => 'show')
    else
      not_found
    end
  end
end
