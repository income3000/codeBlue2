Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'profile/index'
 
  
  root 'pages#home'
  use_doorkeeper
  devise_for :users
  resources :officers
  resources :das
  resources :judges
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  draw :api 
  # Defines the root path route ("/")
  # root "articles#index"
end
