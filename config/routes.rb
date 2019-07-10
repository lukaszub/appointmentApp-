Rails.application.routes.draw do
  get 'clients/new'
  devise_for :users
	root 'pages#home' 

	resources :employees
	resources :clients
	resources :appointments
 
end
