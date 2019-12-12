Given("the following products exist:") do |table|
  table.hashes.each do |product_attributes|
    create(:product, product_attributes)
  end
end
  Given("the following user exist:") do |table|
    table.hashes.each do |hash|
      create(:user, hash)
  end
end