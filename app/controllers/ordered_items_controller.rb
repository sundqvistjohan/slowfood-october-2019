class OrderedItemsController < ApplicationController
  def index
    @ordered_items = current_user.orders.last.shopping_cart_items
    @totalprice = 0
  end
end
