Rails.application.routes.draw do
  root to: "birthdays#index"
  
  devise_for :user
  resources :birthdays, only: [:index, :new, :create, :show, :edit, :update]
  resources :pictures, only: [:new, :create]
  resources :color_papers, only: [:show, :edit, :update]
  resources :comments, only: [:create]
 end
