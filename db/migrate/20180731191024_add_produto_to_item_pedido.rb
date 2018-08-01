class AddProdutoToItemPedido < ActiveRecord::Migration[5.2]
  def change
    add_reference :item_pedidos, :produto, foreign_key: true
  end
end
