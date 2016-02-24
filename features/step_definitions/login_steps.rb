
Given(/^I am on the homepage$/) do
  home_page.visit
end


When(/^I login with username "([^"]*)" and password "([^"]*)"$/) do |username, password|
  @username = username
  home_page.sign_in_with(username, password)
end


Then(/^the login should be successful$/) do
  expect(home_page.login_name_link).to have_content(@username)
end


Then(/^I should see an error message "([^"]*)"$/) do |error_message|
  expect(home_page.error_messages).to have_content(error_message)
end