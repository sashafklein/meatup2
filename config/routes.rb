Rails.application.routes.draw do

  devise_for :users
  root 'animals#index'
  resources :animals
  resources :users

end
