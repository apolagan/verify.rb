require 'selenium-webdriver'
require 'rspec/expectations'

@driver= Selenium::WebDriver.for :chrome

@driver.navigate.to"http://the-internet.herokuapp.com/login"
@driver.find_element(id: 'username').send_keys('tomsmith')
@driver.find_element(id: 'password').send_keys('SuperSecretPassword!')
@driver.find_element(id: 'login').submit

begin
  @driver.find_element(id: 'login').displayed?.should be_false
rescue Selenium::WebDriver::Error::NoSuchElementError
  false
end