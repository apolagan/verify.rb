require 'selenium-webdriver'
require 'rspec/expectations'
require 'watir-webdriver'

@browser= Selenium::WebDriver.for :chrome
@browser.navigate.to "http://shoestore-manheim.rhcloud.com/definition"
input_email=@browser.find_element(:id=>'remind_email_input')
email=input_email.send_keys('xx')
email_id=input_email.attribute('value')
puts email_id
submit=@browser.find_element(:xpath=>'//*[@id="remind_email_form"]/div/input[2]').click
notice=@browser.find_element(:id=>'flash')
notice_text=notice.text

" Thanks! We will notify you of our new shoes at this email: xx@gmail.com ".eql? notice_text
#@browser.quit

