Rails.application.routes.draw do
  resources :order_items, only: [:create]
  devise_for :users
  root controller: :products, action: :index
end
