Twomonths::Application.routes.draw do
  match '/' => 'home#index'

  # Auth config
  match '/login' => 'sessions#new'
  match '/auth/:provider/callback' => 'sessions#create'
end
