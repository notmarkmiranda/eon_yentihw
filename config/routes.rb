Rails.application.routes.draw do
  resources :memories
  root to: 'memories#index'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy', as: 'logout'
end
