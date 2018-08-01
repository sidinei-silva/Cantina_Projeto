class CreateItemAdicionals < ActiveRecord::Migration[5.2]
  def change
    create_table :item_adicionals do |t|

      t.timestamps
    end
  end
end
