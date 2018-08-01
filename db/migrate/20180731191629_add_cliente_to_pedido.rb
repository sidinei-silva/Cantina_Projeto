class AddClienteToPedido < ActiveRecord::Migration[5.2]
  def change
    add_reference :pedidos, :cliente, foreign_key: true
  end
end
