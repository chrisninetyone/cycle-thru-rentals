Rails.application.routes.draw do
  root to: 'pages#home'

  resources :bicycles

  resources :bookings, only: [:create, :new, :show, :index] do
    resources :reviews, only: [:create, :edit, :update]
  end
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
