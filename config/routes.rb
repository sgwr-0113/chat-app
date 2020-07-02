Rails.application.routes.draw do
  devise_for :users
  root "messages#index"
  root "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end