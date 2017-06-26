Rails.application.routes.draw do

  root 'pages#index'
  get 'index' => 'pages#index'
  get 'pages/index' => 'pages#index'
  get 'pages/contato' => 'pages#contato'
  get 'pages/sobrenos' => 'pages#sobrenos'
  get 'pages/mapa_alfa' => 'pages#mapa_alfa'
  get '/perfil' => 'pages#perfil'
  get 'auth/:provider/callback',  to: 'sessions#create'
  get 'logout',                   to: 'sessions#destroy'
  get 'auth/:provider', to: 'sessions#create'

  
end
 
