Rails.application.routes.draw do
  resources :articles
  get '/index',to: 'index#index'
  get '/profile',to: 'index#profile'
  root 'index#index'
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end