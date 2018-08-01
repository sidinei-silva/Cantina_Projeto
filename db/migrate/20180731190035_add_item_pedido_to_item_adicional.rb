class AddItemPedidoToItemAdicional < ActiveRecord::Migration[5.2]
  def change
    add_reference :item_adicionals, :item_adicional, foreign_key: true
  end
end
