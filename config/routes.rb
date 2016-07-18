Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Route to default Homepage
  get '/', to: 'marketplace#index'

  #Routes from session page
  get '/logout', to: 'sessions#destroy', as: :logout

  post '/cargo-login', to: 'sessions#create_cargo'

  post '/ship-login', to: 'sessions#create_ship'

  # Routes from landing pagee
  get '/cargo-owner', to: 'cargo_owners#show'

  get '/ship-owner', to: 'ship_owners#show'

  # Routes from  Cargo owner page
  get '/cargo-owner/new', to: 'cargo_owners#index', as: :cargo_owner_path

  get '/cargo-owner/login', to: 'sessions#cargo_login'

  get '/cargo-owner/:id', to: 'cargo_owners#profile'

  post '/register/cargo-owner', to: 'cargo_owners#new'


  #Routes from Ship owner Page
  get '/ship-owner/new', to: 'ship_owners#index', as: :ship_owner_path

  get '/ship-owner/login', to: 'sessions#ship_login'

  get '/ship-owner/:id', to: 'ship_owners#profile'

  post '/register/ship-owner', to: 'ship_owners#new'

end
