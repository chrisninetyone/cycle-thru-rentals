Rails.application.routes.draw do
  root to: 'pages#home'

  resources :bicycles do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:show, :index] do
    resources :reviews, only: [:new, :create, :edit, :update]
  end

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
