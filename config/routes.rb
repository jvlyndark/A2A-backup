Rails.application.routes.draw do
  resources :match_profiles
  # TODO: determine what homepage will be
  # root to: "profiles#index"
  resources :profiles
  resources :users, except: [:new]

  # TODO: create a pages model?
  # get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
