Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'marketplace#index'

  get '/register', to: 'marketplace#new', as: :new_user

  get '/login', to: 'sessions#new', as: :user_login

  get '/cargo-login', to: 'sessions#new', as: :cargo_login

  get '/ship-login', to: 'sessions#new', as: :ship_login

  get '/logout', to: 'sessions#destroy', as: :logout

  post '/cargo-login', to: 'sessions#create_cargo'

  post '/ship-login', to: 'sessions#create_ship'

  get '/register/cargo-owner', to: 'cargo_owners#index', as: :cargo_owner_path

  get '/register/ship-owner', to: 'ship_owners#index', as: :ship_owner_path


  post '/register/cargo-owner', to: 'cargo_owners#new'

  post '/register/ship-owner', to: 'ship_owners#new'


end
