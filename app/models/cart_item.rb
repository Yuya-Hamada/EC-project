class CartItem < ApplicationRecord
  belongs_to :cart, optional: true
  belongs_to :item, optional: true
end
