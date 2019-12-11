Given("the following products exist:") do |table|
  table.hashes.each do |product_attributes|
    create(:product, product_attributes)
  end
end