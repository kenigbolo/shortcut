Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Route to default Homepage
  get '/', to: 'marketplace#index'

  get '/contact', to: 'marketplace#contact'

  get '/marketplace', to: 'marketplace#show'

  get '/marketplace/cargo/bid', to: 'bids#show'

  get '/marketplace/ship/bid', to: 'ship_bids#show_ship'

  post '/marketplace/filter', to: 'marketplace#filter'

  #Routes from session page
  get '/logout', to: 'sessions#destroy', as: :logout

  post '/cargo-owner/login', to: 'sessions#login_cargo'

  post '/ship-owner/login', to: 'sessions#login_ship'

  # Routes from landing pagee
  get '/cargo-owner', to: 'cargo_owners#show'

  get '/ship-owner', to: 'ship_owners#show'

  # Routes from  Cargo owner page
  get '/cargo-owner/new', to: 'cargo_owners#index', as: :cargo_owner_path

  get '/cargo-owner/login', to: 'sessions#cargo_login', as: :cargo_login_path

  get '/cargo-owner/:id', to: 'cargo_owners#profile'

  get 'cargo-owner/add-cargo/:id', to: 'cargos#show'

  post '/register/cargo-owner', to: 'cargo_owners#new'


  #Routes from Ship owner Page
  get '/ship-owner/new', to: 'ship_owners#index', as: :ship_owner_path

  get '/ship-owner/login', to: 'sessions#ship_login', as: :ship_login_path

  get 'ship-owner/add-cargo/:id', to: 'ships#show'

  get '/ship-owner/:id', to: 'ship_owners#profile'

  post '/register/ship-owner', to: 'ship_owners#new'


  #Routes from Cargo Page
  post '/cargo/new', to: 'cargos#new'

  #Routes from Ship Page
  post '/ship/new', to: 'ships#new'


  #Routes from profile page
  get '/cargo-owner/:id/bid', to: 'bids#edit'

  get '/ship-owner/:id/bid', to: 'ship_bids#edit_ship'

  post '/bid/edit', to: 'bids#create'

  post '/bid/edit_ship', to: 'ship_bids#create_ship'

  #Routes from bidding page
  post '/bid/new', to: 'bids#new'

  post '/bid/new_ship', to: 'ship_bids#new_ship'

end
