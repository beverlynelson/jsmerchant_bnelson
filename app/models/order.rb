class Order < ActiveRecord::Base
  attr_accessible :customer_id, :status
  has_many :order_items
  
  def total
    order_items.collect(&:subtotal).sum
  end
  
  def add_product(product_id)
    order_item = order_items.find_or_initialize_by_product_id(product_id, :quantity => 0)
    order_item.quantity += 1
    order_item.save    
  end
end
