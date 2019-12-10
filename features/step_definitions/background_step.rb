Given("the following products exist:") do |table|
  table.hashes.each do |attrs|
    create(:product, attrs)
  end
end