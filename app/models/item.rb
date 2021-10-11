class Item < ApplicationRecord
  has_many :cart_item
  has_many :cart, through: :cart_item
end
