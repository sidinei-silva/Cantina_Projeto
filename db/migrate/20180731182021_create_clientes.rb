class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :nomeCliente
      t.datetime :dataCliente
      t.boolean :statusCliente

      t.timestamps
    end
  end
end
