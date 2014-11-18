require 'selenium-webdriver'
require 'saucelabs'
include SauceLabs



Before do
  #@browser = Selenium::WebDriver.for :chrome
  @browser=SauceLabs.selenium_driver



end


After do
  @browser.quit
end