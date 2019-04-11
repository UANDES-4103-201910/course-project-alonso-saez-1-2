Rails.application.routes.draw do
  resources :posts
  root :to => "posts#index", as: 'index_post_path'
  get '/posts/:id' => "posts#show"
  post '/posts' => "posts#create"
  put '/posts/:id' => "posts#update"
  delete '/posts/:id' => "posts#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
