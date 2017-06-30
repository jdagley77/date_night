Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do 
  	resources :top_restaurants, only: [:new, :create, :destroy]
  end

  # get '/', to: 'restaurants#index'
  root to: 'restaurants#index'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login', to: 'sessions#new'
end
