Rails.application.routes.draw do
  resources :profiles
  resources :users, except: [:new]

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
