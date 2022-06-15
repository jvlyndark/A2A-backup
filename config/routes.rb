Rails.application.routes.draw do
  # TODO: determine what homepage will be
  # root to: "home#index"
  resources :profiles
  resources :users, except: [:new]

  # TODO: create a pages model?
  # get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
