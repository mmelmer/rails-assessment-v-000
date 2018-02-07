Rails.application.routes.draw do
  resources :albums
  resources :artists
  resources :genres

  devise_for :users

  resources :users
  root to: "albums#index"


end
