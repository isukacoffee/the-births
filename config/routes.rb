Rails.application.routes.draw do
  root to: "birthdays#index"
  
  devise_for :user
  resources :birthdays, only: [:index, :new, :create, :show, :edit, :update] do
    resources :color_papers,  only:  [:index, :new, :create]

 end
