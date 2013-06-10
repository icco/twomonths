Twomonths::Application.routes.draw do
  match '/' => 'application#index'

  # Auth config
  resources :identities
  match '/login' => redirect('/auth/identity')
  match '/auth/:provider/callback' => 'sessions#create'
end
