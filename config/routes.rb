Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :topics do
    resources :study_sessions
  end

  root 'static#index'

  get '/topics/:id', to: 'topics#show'

  # IMPORTANT #
  # This `match` must be the *last* route in routes.rb
  match '*path', to: 'static#index', via: :all  

end
