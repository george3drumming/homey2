Rails.application.routes.draw do
  get 'groups', to: "groups#index"
   get 'groups/new_group'  

  resources :charges
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
      post :restore
      post :mark_as_read
    end
    collection do
      delete :empty_trash
    end
  end
  resources :messages, only: [:new, :create]

  resources :users, only: [:index]

  root to: 'conversations#index'
    end


  