# You can implement step definitions for undefined steps with these snippets:

Given("I access the bbc registration page") do
  @bbc_site = BBC_Site.new
  @bbc_site.bbc_homepage.visit_home_page
  @bbc_site.bbc_homepage.click_sign_in_link
  @bbc_site.bbc_homepage.click_reg
  @bbc_site.bbc_registration.click_13_or_over

end

Given("I input a birth year greater than 2004") do
  @bbc_site.bbc_registration.fill_in_dob_error
  # expect(@bbc_site.bbc_registration.check_dob).to be > int
end
#
# Given("I input a birth year greater than {int}") do |int|
#   int = 2004
#   @bbc_site.bbc_registration.fill_in_dob_error
#   expect(@bbc_site.bbc_registration.check_dob).to be > int
# end


When("I try to submit and continue") do
  expect(@bbc_site.bbc_registration.age_error).to be true
end

Then("an error rejects the age") do
  expect(@bbc_site.bbc_registration.check_dob).to be true
end
