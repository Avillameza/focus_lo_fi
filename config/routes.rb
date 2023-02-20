Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'static#index'
  resources :playlists, only: [:index, :show, :create, :destroy]
  ##resources :playlists, only: [:index, :show, :create, :update, :destroy]
  #update path from playlists to playlist for show
  ##get 'playlist/:id', to: 'playlists#show', as: 'playlist_show'

  # IMPORTANT #
  # This `match` must be the *last* route in routes.rb
  # match '*path', to: 'static#index', via: :all  
end
