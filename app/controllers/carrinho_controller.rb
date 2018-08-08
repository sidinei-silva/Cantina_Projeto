class CarrinhoController < ApplicationController
  before_action :authenticate_cliente!
  def carrinho
    if params[:item] != nil
      @produto_id = params[:item][:produto_id]
      @adicionals_id = params[:item][:adicionals_id]
      @item = [@produto_id, @adicionals_id]
    end
  end
end
