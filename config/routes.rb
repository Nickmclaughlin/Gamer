Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'

  resources :blogs  do
    resources :comments
  end

  resources :teams do
  end
  resources :likes do
  end

  resources :users, only: [:show, :index, :edit, :update] do
    resources :teams do
      resources :likes do
      end
    end
  end
end
