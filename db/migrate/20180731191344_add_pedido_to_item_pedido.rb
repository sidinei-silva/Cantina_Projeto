class AddPedidoToItemPedido < ActiveRecord::Migration[5.2]
  def change
    add_reference :item_pedidos, :pedido, foreign_key: true
  end
end
