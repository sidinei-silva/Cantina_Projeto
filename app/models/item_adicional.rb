class ItemAdicional < ApplicationRecord
  belongs_to :adicional
  belongs_to :item_pedido
end
