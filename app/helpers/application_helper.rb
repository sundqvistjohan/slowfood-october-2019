module ApplicationHelper
  def order_items_count
    unless current_user.orders.empty?
      item_count = current_user.orders.last.shopping_cart_items.count
      "Your order contains #{item_count} #{'item'.pluralize(item_count)}"
    end
  end

  def order_items_id
    if current_user.orders.empty?
      "0"
    else
      current_user.orders.ids
    end
  end
end
