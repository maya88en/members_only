Rails.application.routes.draw do
  root 'static_pages#home'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  resources :posts, only: [:new, :create, :index] 
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
