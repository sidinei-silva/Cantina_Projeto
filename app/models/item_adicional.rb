class ItemAdicional < ApplicationRecord
  has_many :adicionals
  has_one :produto
end
