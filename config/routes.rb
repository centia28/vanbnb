Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  # AS TRAVELER
  resources :vans, only: [:index, :show] do
    resources :rents, only: [:create]
  end

  # AS TRAVELER
  resources :rents, only: [:index, :show]

  # AS USER
  resource :profile, only: [:show]

  namespace :owner do
    resource :dashboard, only: [:show]

    resources :vans, only: [:new, :create]
    
    resources :rents, only: [] do
      member do
        patch :accept
        patch :decline
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
