Rails.application.routes.draw do
  root to :'birthday/index'
  devise_for :users
end
