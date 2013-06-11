Twomonths::Application.routes.draw do
  match '/' => 'home#index'

  # Auth config
  match '/login' => 'sessions#new'
  match '/logout' => 'sessions#destroy'
  match '/auth/:provider/callback' => 'sessions#create'

  # Users
  resources :users
  resources :goals
end
