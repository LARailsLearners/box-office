
Given(/^Nothing$/) do
  # ???
end

When(/^I visit the root path$/) do
  visit '/'
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end
