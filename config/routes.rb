Rails.application.routes.draw do
  get 'users/edit'
  devise_for :users
  root to: "products#index"
  resources :products



end
