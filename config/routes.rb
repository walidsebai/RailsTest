Rails.application.routes.draw do
	get 'comments/create'

	resources :articles do

		resources :comments ,only: [:create,:destroy]
	end
	get '/index',to: 'index#index'
	get '/profile',to: 'index#profile'
	get 'myarticle' ,to: 'index#list'
	root 'index#index'
	devise_for :users, :controllers => { registrations: 'users/registrations' }
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
