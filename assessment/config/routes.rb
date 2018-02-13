Rails.application.routes.draw do
  
  resources :albums

  #nested resources for albums
  resources :artists do
    resources :albums
  end
  
  resources :genres, only: [:show, :index]
  devise_for :users
  
  #nested resources for albums
  resources :users, only: [:show, :index, :edit, :update] do
    resources :albums
  end

  root to: "albums#index"

end
