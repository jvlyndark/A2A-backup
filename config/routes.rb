Rails.application.routes.draw do
  root 'homepage#index'
  resources :match_profiles
  resources :profiles
  resources :users, except: [:new]

  # TODO: create a pages model?
  # get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
