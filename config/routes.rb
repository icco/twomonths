Twomonths::Application.routes.draw do

  # Root
  get '/' => 'home#index'

  # Auth config
  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'
  post '/auth/:provider/callback' => 'sessions#create'

  # Users
  get '/user' => 'users#me'
  resources :users
  resources :goals

  # Twilio support
  post "twilio/voice"
  post "twilio/txt"
end
