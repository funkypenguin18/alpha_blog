Rails.application.routes.draw do
  
  #get 'pages/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles

  get 'signup', to: 'users#new'
  #get 'users', to: 'user#edit'
  resources :users, exept: [:new]
end
