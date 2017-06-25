Rails.application.routes.draw do
  get 'sessions/new'

  root 'pages#index'
  get 'index' => 'pages#index'
  get 'pages/index' => 'pages#index'
  get 'pages/contato' => 'pages#contato'
  get 'pages/sobrenos' => 'pages#sobrenos'
  get    '/signup',  to: 'users#new'
  get '/login', to: 'sessions#create'
  get '/editar' => 'pages#editar'
  post   '/login',   to: 'pages#index'
  delete '/logout',  to: 'sessions#destroy'
  post '/users/new',  to: 'users#create'
  get '/perfil' => 'pages#perfil'
  resources :users
  resources :sessions
  
end
 
