class CreateItemPedidos < ActiveRecord::Migration[5.2]
  def change
    create_table :item_pedidos do |t|
      t.integer :quantidadeItem
      t.boolean :statusItem
      t.float :precoItem

      t.timestamps
    end
  end
end
