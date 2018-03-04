Rails.application.routes.draw do
  
  resources :albums

  #nested resources for albums within artists
  resources :artists do
    resources :albums
  end
  
  resources :genres, only: [:show, :index]
  

  devise_scope :user do 
    get '/auth/spotify' => 'callbacks#spotify'
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }


  #nested resources for albums within users
  resources :users, only: [:show, :index, :edit, :update] do
    resources :albums
  end

  root to: "albums#index"

end
