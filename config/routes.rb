Rails.application.routes.draw do
  devise_for :users
  resources :items, only: [:index, :create, :update, :edit, :destroy]
  root 'items#index'
end
