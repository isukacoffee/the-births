Rails.application.routes.draw do
  root to: "birthdays#index"
  devise_for :users
  resources :birthdays, only: [:new, :create, :show, :edit]

 end
