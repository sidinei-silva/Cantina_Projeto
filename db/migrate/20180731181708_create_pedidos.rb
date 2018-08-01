class CreatePedidos < ActiveRecord::Migration[5.2]
  def change
    create_table :pedidos do |t|
      t.datetime :dataPedido
      t.string :statusPedido
      t.float :precoPedido

      t.timestamps
    end
  end
end
