Rails.application.routes.draw do
  root to: 'users#new'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end