require 'selenium/webdriver'
require 'rspec/expectations'

@browser= Selenium::WebDriver.for :chrome
@browser.navigate.to"http://demoqa.com/tooltip/"
# tooltip=@browser.find_element(:id=>'age')
# text_message=tooltip.attribute('title')
# tt=@browser.action.move_to(tooltip)
# sleep(2)
# tt.perform
#expect(tooltip['title']).to eq(text_message)
custom_demo=@browser.find_element(:xpath=>'//*[@id="ui-id-2"]')
#@browser.action.move_to(custom_demo).click
custom_demo.click
open_event=@browser.find_element(:id=>'open-event')
@browser.action.move_to(open_event).perform




