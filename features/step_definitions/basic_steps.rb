Given("I am on the landing page") do
  visit root_path  
end

Given("I click on {string}") do |element|
  click_on element
end

Given("I am on the signup page") do
  visit new_user_registration_path
end

When("I fill in {string} with {string}") do |input, content|
  fill_in input, with: content
end

Given("I click on {string} for {string}") do |element, product_name|
  product = Product.find_by(name: product_name)
  within("#product_#{product.id}") do
    click_on element
  end
end
