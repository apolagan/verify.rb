require 'selenium/webdriver'
require'rspec/expectations'
require 'yaml'


def error_present?
  begin
    error_head=@browser.find_element(:xpath=>'//*[@id="error_explanation"]/h2')
      puts error_head.text
    return true
  end
rescue
  puts "no error"
  return false
end

@browser= Selenium::WebDriver.for :chrome
@browser.navigate.to "http://puppies.herokuapp.com/"
  index_puppy =@browser.find_elements(:class=>'name').find_index { |puppy| puppy.text == 'Brook' }
  @browser.find_elements(class: 'rounded_button')[index_puppy].click
   adopt_me=@browser.find_element(:class=>'rounded_button').click
   click_collar=@browser.find_element(:id=>'collar').click
   complete_adoption=@browser.find_elements(:class=>'rounded_button')[0].click
     order_name_text=@browser.find_element(:id=>'order_name')
     order_name_text.send_keys('Anitha')
     ss=order_name_text.attribute('value')
if ss=="" then
  puts "Name Blank"
else
  @txt_file=File.open("C:/Selenium/selenium_training/features/support/datafiles/check_out.txt", "w")
  @txt_file.write("Name: #{ss}/n")
end

   order_address_text=@browser.find_element(:id=>'order_address')
   order_address_text.send_keys('asdf')
   aa=order_address_text.attribute('value')
     if aa==""
       puts "Address Blank"
     else
       @txt_file=File.open("C:/Selenium/selenium_training/features/support/datafiles/check_out.txt", "a")
       @txt_file.write("Address: #{aa}")
     end
   order_email_text=@browser.find_element(:id=>'order_email')
   order_email_text.send_keys('yy@gmail.com')
   ee=order_email_text.attribute('value')
     if ee==""
       puts "Email Blank"
     else
       @txt_file=File.open("C:/Selenium/selenium_training/features/support/datafiles/check_out.txt", "a")
       @txt_file.write("Email: #{ee}")
       puts ee
     end

    select_pay_type_element = @browser.find_elements(:id => 'order_pay_type')
  # select_pay_type = Selenium::WebDriver::Support::Select.new(select_pay_type_element)
  # select_pay_type.select_by(:text,'Check')
   select_pay_type_element.each do|zz|
       if zz.text=="Select a payment method"
       puts "pay type is not selected"
     else
       puts zz.text
     end
       end

  place_order=@browser.find_element(:name=>'commit').click

if error_present?
  error= @browser.find_elements(:xpath=>'//*[@id="error_explanation"]/ul/li')
  error.each do|yy|
  #puts yy.text
    @txt_file=File.open("C:/Selenium/selenium_training/features/support/datafiles/check_out.txt", "a")
    @txt_file.write("Error: #{yy}")
  end
  end
