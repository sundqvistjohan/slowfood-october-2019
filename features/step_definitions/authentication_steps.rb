Given("I'm logged in as {string}") do |email|
  @user = User.find_by(email: email)
  login_as(@user)
end