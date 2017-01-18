Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  # devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}, controllers: { registrations: 'registrations' }
  resources :users, :only => [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  


  root 'pages#home'

  get '/login' => 'pages#login'

  get '/register' => 'pages#register'
  
  get '/edit-account' => 'pages#edit-account'

  get '/index' => 'pages#index'

  get '/band' => 'pages#band'

  get '/concert' => 'pages#concert'


end
