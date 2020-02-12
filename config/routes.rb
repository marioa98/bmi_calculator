Rails.application.routes.draw do
  
  get '/users/showcase', to: 'users#showcase', as: 'index'
  get '/users/signin', to: 'users#signin', as: 'signin'

  post 'users/create', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#login'
end
