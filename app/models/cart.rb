class Cart < ApplicationRecord
  has_many :cart_item
  has_many :item, through: :cart_item
end
