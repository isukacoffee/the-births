Rails.application.routes.draw do
  root to: "birthdays#index"
  devise_for :users
  resources :birthdays, only: [:index, :new, :create, :show, :edit, :update]

 end
