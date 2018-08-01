class AddProdutoToAdicional < ActiveRecord::Migration[5.2]
  def change
    add_reference :adicionals, :produto, foreign_key: true
  end
end
