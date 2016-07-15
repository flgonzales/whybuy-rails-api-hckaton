Rails.application.routes.draw do
  resources :items, only: [:index, :create, :update, :edit, :destroy]
  root 'items#index'
end
