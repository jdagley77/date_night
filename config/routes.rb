Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do 
  	resources :top_restaurants, only: [:new, :create, :destroy]
  end

  # get '/', to: 'restaurants#index'
  root to: 'restaurants#index'
  get    '/signup', to: 'users#new'
  post   '/users', to: 'users#create'
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
