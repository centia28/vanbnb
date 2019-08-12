Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :vans, only: [:index, :show] do
    post 'rents', to: 'rents#create'
  end
  resources :rents, only: [:index, :show]

  get 'profile', to: 'users#show'

  namespace :owner do
    get 'dashboard', to: 'dashboard#show'

    resources :rents, only: [] do
      member do
        get 'accept'
        get 'decline'
      end
    end

    get 'vans/new', to: 'vans#new'
    post 'vans', to: 'vans#create'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
