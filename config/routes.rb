Rails.application.routes.draw do
  devise_for :user, only: []
  #resources :users, only: [:index, :show]
  resources :items, only: [:index, :create, :update, :edit, :destroy]
  root 'items#index'
end
