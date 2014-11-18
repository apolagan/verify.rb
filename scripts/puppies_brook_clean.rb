require 'selenium-webdriver'
require 'rspec/expectations'

@browser=Selenium::WebDriver.for :chrome
@browser.navigate.to "http://puppies.herokuapp.com/"
puts @browser.title

#clicking on View details button
View_Details=@browser.find_elements(:class=>'rounded_button')[0]
x=View_Details.attribute('value')
if (x=='View Details')
     puts  'pass'
   else
      puts 'fail'
end
View_Details.click


#clicking on Adopt Me button
Adopt_Me=@browser.find_element(:class=>'rounded_button')
puts @browser.find_element(:class=>'rounded_button').attribute('value')
Adopt_Me.click


#selection of additional products and adding another puppy
#@browser.find_element(:id=>'collar').click
Add_another_Puppy=@browser.find_elements(:class=>'rounded_button')[1]
puts @browser.find_elements(:class=>'rounded_button')[1].attribute('value')
Add_another_Puppy.click


#selecting another puppy from puppy list
Puppy_two=@browser.find_elements(:class=>'rounded_button')[1]
puts @browser.find_elements(:class=>'rounded_button')[1].attribute('value')
Puppy_two.click


#clicking on Adopt Me button
Adopt_Mee=@browser.find_element(:class=>'rounded_button')
Adopt_Mee.click


#selection of additional products
@browser.find_elements(:id=>'collar')[1].click
sleep(5)
@browser.find_elements(:id=>'toy')[0].click
sleep(5)

#Finish the adoption process
Adopt_Puppy=@browser.find_elements(:class=>'rounded_button')[0]
puts @browser.find_elements(:class=>'rounded_button')[0].attribute('value')
Adopt_Puppy.click


#Entering the details
@browser.find_element(:id=>'order_name').send_keys('anu')
@browser.find_element(:id=>'order_address').send_keys('ABCD')
@browser.find_element(:id=>'order_email').send_keys('ap@gmail.com')
@browser.find_element(:id=>'order_pay_type').send_key('Check')

#place order
Place_Order=@browser.find_element(:name=>'commit')
puts @browser.find_element(:name=>'commit').attribute('value')
Place_Order.click

#verifying the process is completed
if(@browser.find_element(:id=>'notice').text=='Thank you for adopting a puppy')
  puts 'pass'
else
  puts 'fail'
end
#puts @browser.find_element(:id=>'notice').tag_name

@browser.quit
