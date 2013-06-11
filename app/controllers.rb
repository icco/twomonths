Twomonths::App.controllers  do
  layout :applications

  get :index do
    render :index
  end

  get :login do
    render :login
  end

  get :logout do
    session.clear
    redirect url_for(:index)
  end

  post "/auth/identity/callback" do
    set_current_user(User.login(params['auth_key'], request['password']))

    if get_current_user
      redirect "/"
    else
      redirect "/logout"
    end
  end

  get '/stylesheets/:name' do
    redirect "/css/#{params[:name]}"
  end

  get '/javascripts/:name' do
    redirect "/js/#{params[:name]}"
  end

  get '/images/:name' do
    redirect "/img/#{params[:name]}"
  end
end
