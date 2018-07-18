# You can implement step definitions for undefined steps with these snippets:

Given("I access the bbc login page") do
  # visit('http://www.bbc.co.uk')
  # sleep 2

  @bbc_site = BBC_Site.new
  @bbc_site.bbc_homepage.visit_home_page
  @bbc_site.bbc_homepage.click_sign_in_link


end

Given("I input correct username details") do
  @bbc_site.bbc_login.fill_email
end

Given("I input incorrect password details") do
  @bbc_site.bbc_login.fill_password_incorrect
end

When("I try to login") do
  @bbc_site.bbc_login.click_submit
end

Then("I receive an error") do
  expect(@bbc_site.bbc_login.check_dob).to be true
end
