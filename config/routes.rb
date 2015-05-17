Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'

  resources :blogs  do
    resources :comments
  end

  resources :teams do
  end 

  resources :users, only: [:show, :index, :edit, :update]
end
