require 'selenium-webdriver'
require 'rspec/expectations'

@browser=Selenium::WebDriver.for :chrome
@browser.navigate.to "http://the-internet.herokuapp.com/"
@browser.find_element(:link_text=>'Key Presses').click
el = @browser.find_element(:class=>'no-js')
  #@browser.action.key_down(el, :shift).perform

#(0...255).each do|ascii|
  @browser.action.send_keys(97.chr).perform

  sleep(1)
  #end


