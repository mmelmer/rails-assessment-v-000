Rails.application.routes.draw do
  
  resources :albums
  resources :artists
  resources :genres, only: [:show, :index]
  devise_for :users
  #get '/users/sign_up' => 'devise/registrations#new'
  #get '/users/sign_in' => 'devise/sessions#new'
  resources :users, only: [:show, :index]

  root to: "albums#index"

end
