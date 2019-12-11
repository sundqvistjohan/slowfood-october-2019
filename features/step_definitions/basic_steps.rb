Given("I am on the landing page") do
  visit root_path  
end

Given("I click on {string}") do |element|
  click_on element
end