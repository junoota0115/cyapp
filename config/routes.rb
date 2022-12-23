Rails.application.routes.draw do
  get 'users/edit'
  get "search" => "products#search"
  devise_for :users
  root to: "products#index"
  resources :products



end
