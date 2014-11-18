require 'selenium/webdriver/common/driver_extensions/takes_screenshot'
require 'selenium/webdriver'
require 'rspec/expectations'
@browser= Selenium::WebDriver.for :chrome
@browser.navigate.to"http://www.toolsqa.com/automation-practice-switch-windows/"
#puts @browser.title
window_name=@browser.window_handle
p window_name
new_message=@browser.find_element(:id=>'button1')
new_message.click
pop_up=@browser.window_handles
puts pop_up.length
pop_up.each do|x|
  p x
end
@browser.switch_to.window(pop_up.last)
#@browser.close
#@browser.quit

#alert box
@browser.find_element(:id=>'alert').click
alert=@browser.switch_to.alert
puts alert.text
alert.accept



