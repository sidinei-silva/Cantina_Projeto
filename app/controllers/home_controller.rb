class HomeController < ApplicationController
  def index
    @produtos = Produto.all
  end
  def details
    begin
      @produto = Produto.find(params[:format])
    rescue ActiveRecord::RecordNotFound => e
      flash[:notice] = "Produto não encontrado"
      redirect_to root_url
    end
  end
end
