Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
 #  devise_scope :user do
 #  	get 'login', to: 'devise/sessions#new'
	# end

	# devise_scope :user do
 #  	delete 'logout', to: 'devise/sessions#destroy'
	# end

	# devise_for :users, skip: [:sessions]
	# as :user do
	#   get 'signin', to: 'devise/sessions#new', as: :new_user_session
	#   post 'signin', to: 'devise/sessions#create', as: :user_session
	#   match 'signout', to: 'devise/sessions#destroy', as: :destroy_user_session, via: Devise.mappings[:user].sign_out_via
	# end


  root 'pages#home'

  get '/login' => 'pages#login'

  get '/register' => 'pages#register'

  get '/profile' => 'pages#profile'
  
  get '/edit-account' => 'pages#edit-account'

  get '/index' => 'pages#index'

  get '/band' => 'pages#band'

  get '/concert' => 'pages#concert'


end
