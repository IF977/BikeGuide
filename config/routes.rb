Rails.application.routes.draw do
  get 'sessions/new'

  root 'pages#index'
  get 'index' => 'pages#index'
  get 'pages/index' => 'pages#index'
  get 'pages/contato' => 'pages#contato'
  get 'pages/sobrenos' => 'pages#sobrenos'
  get    '/signup',  to: 'users#new'
  get '/login', to: 'sessions#new'
  get 'pages/editar' => 'pages#editar'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post '/signup',  to: 'users#create'
  get 'pages/perfil' => 'pages#perfil'
  resources :users
  resources :sessions
  
end
 
