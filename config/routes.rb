Rails.application.routes.draw do
  resources :memories
  root to: 'memories#index'
end
