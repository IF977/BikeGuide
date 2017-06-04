Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'pages/contato' => 'pages#contato'
  get 'pages/sobrenos' => 'pages#sobrenos'
end
