require 'selenium-webdriver'
require 'rspec/expectations'





@browser=Selenium::WebDriver.for :chrome

@browser.navigate.to "http://puppies.herokuapp.com/"
puts @browser.title

@browser.find_elements(:class=>'rounded_button')[0].click
@browser.find_element(:class=>'rounded_button').click
#if (@browser.find_element(:class => 'rounded_button').attribute('value')=='Adt Me!')
  #puts'pass'
#end
#expect((@browser.find_element(:class => 'rounded_button').attribute('value')).to eq('Adopt Me!'))
#assert(@browser.find_element(:class => 'rounded_button').text.include?('Adopt Me'),'Page contains the text NAME')

@browser.find_element(:id=>'collar').click
@browser.find_elements(:class=>'rounded_button')[1].click
@browser.find_elements(:class=>'rounded_button')[1].click
@browser.find_element(:class=>'rounded_button').click
@browser.find_element(:id=>'toy').click
@browser.find_elements(:class=>'rounded_button')[0].click
@browser.find_element(:id=>'order_name').send_keys('anu')
@browser.find_element(:id=>'order_address').send_keys('ABCD')
@browser.find_element(:id=>'order_email').send_keys('ap@gmail.com')
@browser.find_element(:id=>'order_pay_type').send_key('Check')
#@browser.find_element(:id=>'order_pay_type').click
#select =@browser.find_element(:tag_name=>'select')
#all_options = select.find_elements(:tag_name=>'option')
#all_options.each do |option|
# if(option.attribute('value')=='Check')
# option.click
#break#
# end
#end
@browser.find_element(:name=>'commit').click
#@browser.find_element(:id => 'notice').attribute('name')
if(@browser.find_element(:tag_name => 'p').attribute('id')=='notice')
  puts 'pass'
else
  puts 'fail'
  end
puts @browser.find_element(:tag_name=>'p').attribute('id')







#Payment_Type.each{|option|option.click if option.text=='check'}
#@browser.find_element(:name=>'commit').click


#Options=@browser.find_element(:id=>'order_pay_type')
#@browser.find_element(:id=>'order_pay_type').click

# Select the option "check"
#Payment_Type.each do |op|
  #if op.text == 'check'
    #op.select('check')
   # break#
 # end
#end
@browser.quit
