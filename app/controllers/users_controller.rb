class UsersController < ApplicationController
  before_filter :authenticate, only: [:new, :create, :edit, :save]

  def me
    if self.current_user
      redirect_to url_for(:id => self.current_user.username, :controller => 'users', :action => 'show')
    else
      not_found
    end
  end

  def index
    not_found
  end

  def show
    @user = self.current_user
    @show_user = User.find_by_username(params['id'])
    not_found if !@user
  end

  def edit
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
end
