class UsersController < ApplicationController

  def index

  end

  def show
    @user = User.find_by_username(params['id'])
  end

  def edit

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
end
