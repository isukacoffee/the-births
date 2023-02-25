Rails.application.routes.draw do
  get 'birthday/index'
  devise_for :users
end
