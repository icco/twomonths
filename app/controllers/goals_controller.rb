class GoalsController < ApplicationController
  def index
  end

  def new
    @user = self.current_user
  end

  def create
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
      redirect_to url_for(:controller => 'goals', :action => 'new')
      render "new", :alert => g.errors
    end
  end

  def show
  end

  def edit
  end
end
