class Product < ActiveRecord::Base
  attr_accessible :title, :price, :description, :stock, :image_url
  validates_numericality_of :price, :only_integer => true, :message => "Should be entered in cents."
  validates_numericality_of :stock, :only_integer => true, :greater_than_or_equal_to => 0
end
