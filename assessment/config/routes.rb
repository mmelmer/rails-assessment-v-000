Rails.application.routes.draw do
  
  resources :albums
  resources :artists
  resources :genres
  resources :users, only: [:show, :index]
  devise_for :users

  root to: "albums#index"

end
