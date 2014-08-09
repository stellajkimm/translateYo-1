Rails.application.routes.draw do

  devise_for :users

  resources :comments do
    resources :comments
  end

  resources :queries do
    resources :comments
  end
  
  resources :languages
  
  root :to => 'languages#index'
end
