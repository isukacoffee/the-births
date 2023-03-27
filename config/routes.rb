Rails.application.routes.draw do
  root to: "birthdays#index"
  
  devise_for :user
  resources :birthdays, only: [:index, :new, :create, :show, :edit, :update]
  resources :color_papers,  only:  [:create, :edit, :update]
 end
