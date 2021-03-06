Rails.application.routes.draw do
  root to: 'home#index'
  get '/home' => 'home#index'
  get '/details' => 'home#details', as: 'detalhes'
  get '/carrinho' => 'carrinho#carrinho'
  post '/carrinho' => 'carrinho#carrinho'
  resources :carrinho
  devise_for :clientes
  resources :clientes
  resources :pedidos
  resources :item_pedidos
  resources :item_adicionals
  resources :adicionals
  resources :produtos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
