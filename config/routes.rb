Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'home/about' => 'homes#show'
  get 'users' => 'users#index'
  delete '/books' => 'books#destroy'
  resources :books
  resources :users
end
