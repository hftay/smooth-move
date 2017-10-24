Rails.application.routes.draw do
  resources :listings
  resources :tags
  resources :users
  root 'pages#login'
  get '/options', to: 'pages#options'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
