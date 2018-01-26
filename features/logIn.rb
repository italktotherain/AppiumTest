require 'selenium-webdriver'


Given (/^I have App running with appium$/) do
#   Make sure appium server has been started
#   The test is going to fail if it isn't, but in terms of readability it's good to have I guess?
end

Then (/^I select Alerts$/) do
  driver.find_element(:name, "Alerts").click
end

And (/^I select Create App Alert$/) do
  driver.find_element(:name, "Create App Alert").click
end

Then (/^I close the alert popup$/) do
  driver.find_element(:name, "Will do").click
end

Then (/^I go back to the previous page$/) do
  driver.find_element(:name, "Back").click
end

And (/^I go to the Attributes page$/) do
  driver.find_element(:name, "Attributes").click
end

Then (/^I type "(.*?)" in the second text field$/) do |text_input|
  element = driver.find_element :name => "aLabel"
  element.send_keys text_input
end