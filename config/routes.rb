Rails.application.routes.draw do
  root to: "birthdays#index"
  
  devise_for :user
  resources :birthdays, only: [:index, :new, :create, :show, :edit, :update]
  resources :Pictures, only: [:index, :new, :create]
 end
