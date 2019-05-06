Rails.application.routes.draw do
  get 'start_page/home_page'
  root to: 'start_page#home_page'
  resources :comments
  resources :posts
  resources :dumpsters
  resources :walls
  resources :blacklists
  resources :users
  resources :admins
  resources :super_admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
