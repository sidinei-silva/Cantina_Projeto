class CarrinhoController < ApplicationController
  before_action :authenticate_cliente!
  def carrinho
    if params[:item] != nil
      @item = Hash.new
      @item[:produto_id] = params[:item][:produto_id]
      @item[:adicionals_id] = params[:item][:adicionals_id]
      cart << @item
    end
  end

  private
  def cart
    session[:cart] ||= []
  end
end
