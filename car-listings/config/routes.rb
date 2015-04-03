Rails.application.routes.draw do
  root 'manufacturers#index'
  resources :manufacturers do
    resources :cars, only: [:index, :create, :new]
  end
  resources :cars, only: [:edit, :update, :destroy]
  devise_for :users
end
