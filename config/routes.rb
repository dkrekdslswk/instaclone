Rails.application.routes.draw do
  resources :content, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  
  resources :session, only: [:new, :create, :destroy]
  resources :user, only: [:new, :create, :show]
  
  root 'main#index'
end
