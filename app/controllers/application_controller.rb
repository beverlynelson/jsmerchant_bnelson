class ApplicationController < ActionController::Base
  protect_from_forgery
  def load_order
    begin
      @order = Order.find(session[:order_id])
    rescue ActiveRecord::RecordNotFound
      @order = Order.create(:status => "unsubmitted")
      session[:order_id] = @order.id
    end
  end
end
