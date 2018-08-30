# frozen_string_literal: true

Rails.application.routes.draw do


  root 'posts#index'
   get '/posts' => 'posts#index'
   get '/posts/new' => 'posts#new'
   post '/posts/new' => 'posts#create'

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login' => 'sessions#new'
   post '/login' => 'sessions#create'
   get '/logout' => 'sessions#destroy'

  root 'posts#index'

  resources :posts

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
end
