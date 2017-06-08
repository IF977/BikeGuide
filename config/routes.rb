Rails.application.routes.draw do
  get 'sessions/new'

  root 'pages#index'
  get 'index' => 'pages#index'
  get 'pages/index' => 'pages#index'
  get 'pages/contato' => 'pages#contato'
  get 'pages/sobrenos' => 'pages#sobrenos'
  get    '/signup',  to: 'user#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post '/signup',  to: 'user#create'
  resources :users
  resources :sessions
end
 
