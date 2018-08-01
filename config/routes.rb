Rails.application.routes.draw do
  root :to => 'home#index'
  get 'home/index'
  resources :clientes
  resources :pedidos
  resources :item_pedidos
  resources :item_adicionals
  resources :adicionals
  resources :produtos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
