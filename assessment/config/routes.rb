Rails.application.routes.draw do
  
  resources :albums

  #nested resources for albums within artists
  resources :artists do
    resources :albums
  end
  
  resources :genres, only: [:show, :index]
  devise_for :users
  
  #nested resources for albums within users
  resources :users, only: [:show, :index, :edit, :update] do
    resources :albums
  end

  root to: "albums#index"

end
