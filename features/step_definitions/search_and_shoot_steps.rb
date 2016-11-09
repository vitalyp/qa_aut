class GoogleSearch < SitePrism::Page
  set_url 'http://www.google.com'

  element :search_field, "input[name='q']"
  element :search_button, "button[name='btnG']"
end

Given(/^I am on google search page$/) do
  @google = GoogleSearch.new
  @google.load
end

# Scenario 1:

When(/^I enter search subject$/) do
  expect(@google).to have_search_field
  @google.search_field.set "Aikido"
  @google.search_button.click
end

Then(/^I should find wiki link in search results$/) do
  sleep 1
end

When(/^I navigate wiki link$/) do
end

Then(/^I should be redirected to wiki site$/) do
end

And(/^I should see the subject information$/) do
end

And(/^I would like to do a screenshot$/) do
end

# Scenario 2:

When(/^I navigate following such link$/) do
end

Then(/^I should be redirected to subject site$/) do
end
