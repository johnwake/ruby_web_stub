Given /^I am on the home page$/ do
  visit "/"
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content text
end

Then /^I should see "([^"]*)" in the selector "([^"]*)"$/ do |text, selector|
  page.should have_selector selector, content: text
end

Then /^I should see "([^"]*)" in a link$/ do |text|
  page.should have_link text
end

Given /^I am on "([^"]*)"$/ do |path|
  visit path
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |element, text|
  p fill_in element, with: text
end

When /^I click "([^"]*)"$/ do |element|
  click_on element
end
