class GoalsController < ApplicationController
  before_filter :authenticate

  def index
    @user = self.current_user
    redirect_to '/'
  end

  def new
    @user = self.current_user
  end

  def create
    @user = self.current_user
    g = Goal.new
    g.user = self.current_user

    if params["goal"]
      if params["goal"]["description"]
        g.description = params["goal"]["description"].strip
      end
    end

    if g.valid?
      g.save
      redirect_to '/'
    else
      render "new", :alerts => g.errors
    end
  end

  def show
    @user = self.current_user
    p params
  end

  def edit
    @user = self.current_user
  end
end
