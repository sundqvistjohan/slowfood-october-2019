module ApplicationHelper
  def order_items_count
    unless current_user.orders.empty?
      item_count = current_user.orders.last.shopping_cart_items.count
      "Your order contains #{item_count} #{'item'.pluralize(item_count)}"
    end
  end
end
