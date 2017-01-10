Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  get '/login' => 'pages#login'

  get '/register' => 'pages#register'

  get '/profile' => 'pages#profile'
  
  get '/edit-account' => 'pages#edit-account'

  get '/index' => 'pages#index'

  get '/band' => 'pages#band'
end
