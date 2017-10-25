Rails.application.routes.draw do
  resources :listings
  resources :tags
  resources :users
  root 'pages#index'
  
  get '/options', to: 'pages#options'
  get '/signup', to: 'pages#signup'
  get '/login', to: 'pages#login'
  get '/dashboard', to: 'pages#dashboard'
  get '/session', to: 'pages#validate_logon'
  get '/logout', to: 'pages#logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
