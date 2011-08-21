class AddDefaultValueToOrderItemsQuantity < ActiveRecord::Migration
  
  def self.up
  change_column :order_items, :quantity, :integer, :default => 0
  end

  def self.down
  end
end
