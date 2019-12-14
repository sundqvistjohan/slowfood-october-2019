Rails.application.routes.draw do
  devise_for :owners
  resources :order_items, only: [:create]
  devise_for :users
  root controller: :products, action: :index
end
