Rails.application.routes.draw do
  get 'profile' => 'users#show', as: :profile
  root to: 'posts#index'
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
