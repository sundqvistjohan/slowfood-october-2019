# frozen_string_literal: true

Given('the following products exist:') do |table|
  table.hashes.each do |product_attributes|
    category = Category.find_or_create_by(name: product_attributes['category'])
    product_attributes.except!('category')
    create(:product, product_attributes.merge(category: category))
  end
end

Given('the following user(s) exist(:)') do |table|
  table.hashes.each do |user_attributes|
    create(:user, user_attributes)
  end
end

Given("the following product has been added to order") do |table|
  table.hashes.each do |order_attribute|
  order = @user.orders.create
  product = Product.find_by(name: order_attribute['name'])
  order.add(product, product.price)
  end
end

