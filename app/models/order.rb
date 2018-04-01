class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :address

  validates :user_id, presence: true
  validates :product_id, presence: true
  validates :address_id, presence: true
  validates :total_money, presence: true
  validates :amount, presence: true
  validates :order_no, uniqueness: true

  before_create :gen_order_no

  private

    def gen_order_no
      self.order_no = RandomCode.generate_order_uuid
    end
end
