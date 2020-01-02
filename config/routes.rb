Rails.application.routes.draw do
  devise_for :users
  root  'informations#index'
  get 'informations' => 'informations#index'
  get   'informations/new'  =>  'informations#new'
  post  'informations'      =>  'informations#create'
  get   'users/:id'   =>  'users#show'
  get   'informations/:id/edit'  => 'informations#edit'
  delete  'informations/:id'  => 'informations#destroy'
  patch   'informations/:id'  => 'informations#update'
end
