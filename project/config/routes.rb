Rails.application.routes.draw do
  get 'profile' => 'users#index', as: :profile
  root to: 'users#new'
  resources :comments
  resources :posts
  resources :dumpsters
  resources :walls
  resources :blacklists
  resources :users
  resources :admins
  resources :super_admins

  #for UsersController
  post '/users/new' => "users#create"
  put '/users/:id' => "users#update"
  delete '/users/:id' => "users#destroy"
  get '/users/:id' => "users#show"

  #for PostsController
  post '/posts/new' => "posts#create"
  put '/posts/:id' => "posts#update"
  delete '/posts/:id' => "posts#destroy"
  get '/posts/:id' => "posts#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
