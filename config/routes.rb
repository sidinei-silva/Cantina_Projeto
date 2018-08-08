Rails.application.routes.draw do
  devise_for :clientes

  root to: 'home#index'
  get '/home' => 'home#index'
  get 'details' => 'home#details', as: 'detalhes'
  get '/carrinho' => 'carrinho#carrinho'
  resources :clientes
  resources :pedidos
  resources :item_pedidos
  resources :item_adicionals
  resources :adicionals
  resources :produtos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
