module ProductsHelper
  def print_price(price)
    format("$%.2f",price/100.0)
  end
  def print_stock(stock)
    if stock > 0
      content_tag :span, "In Stock (#{stock})", :class => "in_stock"
    else
      content_tag :span, "Out of Stock", :class => "out_stock" 
    end
  end
  
end
