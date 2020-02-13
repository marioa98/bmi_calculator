Rails.application.routes.draw do
  
  get '/index', to: 'users#showcase', as: 'index'
  get '/signin', to: 'users#signin', as: 'signin'
  get '*missing', to: 'users#default'

  post '/signin', to: 'users#create'
  post '/login', to: 'sessions#create'
  post '/index', to: 'users#calculate'

  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#login'
end
