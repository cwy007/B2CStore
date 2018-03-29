class ShoppingCart < ApplicationRecord
  belongs_to :product

  validates :user_uuid, presence: true
  validates :product_id, presence: true
  validates :amount, presence: true 
end
