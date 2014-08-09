Rails.application.routes.draw do

  devise_for :users
  #root 'globe#index'

  resources :comments do
    resources :comments
  end

  resources :queries do
    resources :comments
  end
  
  root :to => 'queries#index'
end
