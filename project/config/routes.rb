Rails.application.routes.draw do
  get 'start_page/home_page'
  root to: 'start_page#home_page'
  resources :posts
  get '/posts/:id' => "posts#show"
  post '/posts' => "posts#create"
  put '/posts/:id' => "posts#update"
  delete '/posts/:id' => "posts#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
