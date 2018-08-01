class AddAdicionalToItemAdicional < ActiveRecord::Migration[5.2]
  def change
    add_reference :item_adicionals, :adicional, foreign_key: true
  end
end
