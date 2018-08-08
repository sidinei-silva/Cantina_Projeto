class CarrinhoController < ApplicationController
  before_action :authenticate_cliente!
  @carrinho = []
  def carrinho
    if params[:item] != nil
      @produto_id = produto_id = params[:item][:produto_id]
      @adicionals_id = params[:item][:adicionals_id]
      item = [@produto_id, @adicionals_id]
      carrinho.push(item)
    end

  end
end
