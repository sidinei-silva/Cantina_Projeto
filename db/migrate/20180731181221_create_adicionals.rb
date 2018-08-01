class CreateAdicionals < ActiveRecord::Migration[5.2]
  def change
    create_table :adicionals do |t|
      t.float :valorAdicional
      t.string :descricaoAdicional
      t.boolean :statusAdicional

      t.timestamps
    end
  end
end
