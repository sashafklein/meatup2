Rails.application.routes.draw do

  devise_for :users
  
  root 'landings#show'
  resources :animals
  resources :users

end
