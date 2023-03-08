require 'selenium-webdriver'
require 'cucumber'
require 'rubygems'
require 'rspec'
require 'test/unit/assertions'
require 'watir'
 
Before do |scenario|
 $browser = Watir::Browser.new :chrome
 $browser.driver.manage.window.maximize
end

After do |scenario|
 $browser.close 
end