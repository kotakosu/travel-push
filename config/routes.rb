Rails.application.routes.draw do
  devise_for :users
  root  'informations#index'
  resources :informations do
    resources :comments, only: [:create]
  end                     
  resources :users, only: [:show] 
end
