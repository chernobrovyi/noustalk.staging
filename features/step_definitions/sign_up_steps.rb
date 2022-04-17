require 'selenium-webdriver'
require 'webdrivers'
require 'cucumber'

service_to_firefox_local = Selenium::WebDriver::Service.chrome(path: '/home/valeriy/Projects/ENV/browsers/firefox/geckodriver')
url = 'https://staginga.noustalk.com/'

@browser = Selenium::WebDriver.for :firefox, service: service_to_firefox_local

Given(/^Go to start page for sign up$/) do
  @browser.get url
end

When(/^Start page is loading$/) do
  pending
end

Then(/^Click to button "Don't have an account\?"$/) do
  pending
end

When(/^Sign up page is loading$/) do
  pending
end

Then(/^Fill in the input fields$/) do
  pending
end

When(/^Input fields if fill$/) do
  pending
end

Then(/^Click to button "([^"]*)"$/) do |arg|
  pending
end