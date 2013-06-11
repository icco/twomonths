Twomonths::App.controllers  do
  layout :applications

  get :index do
    render :index
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
