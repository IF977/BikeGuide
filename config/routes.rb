Rails.application.routes.draw do
  root 'pages#index'
  get 'index' => 'pages#index'
  get 'pages/index' => 'pages#index'
  get 'pages/contato' => 'pages#contato'
  get 'pages/sobrenos' => 'pages#sobrenos'
  get 'users/new' => 'users#new'
  resources :user_sessions
  resources :users
 

  get 'user_sessions/create'
  get 'user_sessions/destroy'
  get 'user_sessions/new' => 'user_sessions#new'
  get 'user_sessions/destroy' => 'user_sessions#destroy'
 
end
