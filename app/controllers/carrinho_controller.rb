class CarrinhoController < ApplicationController
  before_action :authenticate_cliente!
  @carrinho = []
  def carrinho
    if params[:item] != nil
      produto_id = params[:item][:produto_id]
      adicionals_id = params[:item][:adicionals_id]
      carrinho.wrap(item: produto_id)
      carrinho.wrap(item: adicionals_id)
    end

  end
end
