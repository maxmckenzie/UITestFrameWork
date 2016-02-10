When(/^I click the "(.*?)" button$/) do |button_text|
  click_button(button_text)
end

Then(/^I should be directed to the "(.*?)" page$/) do |target_url|
  expect(page.current_url).to eq(Capybara.app_host + target_url)
end

When(/^I click the "([^"]+)" link$/) do |link_text|
  click_link(link_text)
end

Given(/^I am logged in$/) do
  visit '/auth'
  fill_in('email', with: 'test@example.com')
  fill_in('password', with: 'password')
  click_button('Sign In')
end

Given(/^I am logged out$/) do
  visit '/auth/logout?redirect_url=' + current_url
end

Given(/^I am on the "(.*?)" page$/) do |url|
  visit url
end

When(/^I click on the "([^"]+)" link$/) do |link_text|
  click_link(link_text)
end