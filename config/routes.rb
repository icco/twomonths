Twomonths::Application.routes.draw do

  # Root
  match '/' => 'home#index'

  # Auth config
  match '/login' => 'sessions#new'
  match '/logout' => 'sessions#destroy'
  match '/auth/:provider/callback' => 'sessions#create'

  # Users
  resources :users
  resources :goals

  # Twilio support
  post "twilio/voice"
  post "twilio/txt"
end
