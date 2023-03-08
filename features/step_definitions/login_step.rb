require 'cucumber'
require 'selenium-webdriver'
require 'rubygems'
require 'rspec'
require 'test/unit/assertions'
require 'watir'

driver = Selenium::WebDriver.for :chrome

password = "secret_sauce"
password1 = "secret_sauce1"

Given("The user on the login page") do
    driver.navigate.to "https://www.saucedemo.com/"
end

When("The user enter valid <username>") do |username|
  driver.find_element(:id, 'user-name').send_keys(username)
end

Then("The user enter valid password") do 
  driver.find_element(:id, 'password').send_keys(password)
end

And('The user click the login button') do
  driver.find_element(:id, 'login-button').click
end
  
Then('The user should be direct to the inventory page and see list of products') do
  driver.navigate.to "https://www.saucedemo.com/inventory.html"
end

When("The user enter invalid <username1>") do |username1|
  driver.find_element(:id, 'user-name').send_keys(username1)
end

Then("The user enter invalid password") do 
  driver.find_element(:id, 'password').send_keys(password1)
end

Then("The user should see an error message") do  
  element = driver.find_element(:id => "login_button_container") 
  expect(element.text).to eq('Epic sadface: Username and password do not match any user in this service')
end