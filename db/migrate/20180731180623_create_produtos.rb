class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.string :descricaoProduto
      t.string :precoProduto
      t.string :imagemProduto
      t.boolean :statusProduto

      t.timestamps
    end
  end
end
