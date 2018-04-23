Rails.application.routes.draw do
  get 'groups', to: "groups#index"
  get 'groups/new_group'
  post '/groups/new_group' => 'groups/new_group'

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

#google calendar commands
  get '/redirect', to: 'calendar#redirect', as: 'redirect'
  get '/callback', to: 'calendar#callback', as: 'callback'
  get '/calendars', to: 'example#calendars', as: 'calendars'
  get '/events/:calendar_id', to: 'example#events', as: 'events', calendar_id: /[^\/]+/
  post '/events/:calendar_id', to: 'example#new_event', as: 'new_event', calendar_id: /[^\/]+/

root to: 'conversations#index'

get 'charges/new'
    end


  