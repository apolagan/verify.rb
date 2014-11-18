
Given(/^I am on the puppy adoption site$/) do
  @browser.navigate.to "http://puppies.herokuapp.com/"
end

When(/^I select puppy "([^"]*)"$/) do |arg|
  puppy_names = @browser.find_elements(class: 'name')
  index_puppy = puppy_names.find_index { |puppy| puppy.text == arg }
  @browser.find_elements(class: 'rounded_button')[index_puppy].click
end

And(/^add the puppy to the shopping cart$/) do
  adopt_me=@browser.find_element(:class=>'rounded_button').click
end

And(/^I proceed to the checkout$/) do

  click_collar=@browser.find_element(:id=>'collar').click
  complete_adoption=@browser.find_elements(:class=>'rounded_button')[0].click
end

And(/^enter "([^"]*)" in the name field$/) do |name|
  @browser.find_element(:id=>'order_name').send_keys(name)
end

And(/^enter "([^"]*)" in the address field$/) do |address|
  @browser.find_element(:id=>'order_address').send_keys(address)
end

And(/^enter "([^"]*)" in the email field$/) do |email|
  @browser.find_element(:id=>'order_email').send_keys(email)
end

And(/^select "([^"]*)" from the pay type$/) do |pay_type|
  select_pay_type_element = @browser.find_element(:id => 'order_pay_type')
  select_pay_type = Selenium::WebDriver::Support::Select.new(select_pay_type_element)
  select_pay_type.select_by(:text,pay_type)
end

And(/^I click the Place Order button$/) do
  place_order=@browser.find_element(:name=>'commit').click
end


Then(/^I should see the text  "([^"]*)"$/) do |arg|
  success_text = @browser.find_element(:id => 'notice').text
  expect(success_text).to eq(arg)end

When(/^I select puppy from (.*)$/) do |puppy_list|
  puppy_names = @browser.find_elements(class: 'name')
  index_puppy = puppy_names.find_index { |puppy| puppy.text == puppy_list }
  @browser.find_elements(class: 'rounded_button')[index_puppy].click
end






Then(/^I should have "([^"]*)" for the name of line item  one$/) do |arg|
  cost_adoption=@browser.find_elements(:tag_name=>'table')
  index_cost=cost_adoption.find_index{|puppy|puppy.text== arg}
end


And(/^I should have "\$34\.95" for the subtotal of line item (\d+)$/) do |arg|
  pending
end

And(/^I should have "([^"]*)" for the cart total$/) do |arg|
  pending
end

When(/^I select puppy and add to shopping cart and checkout$/) do
  @browser.navigate.to "http://puppies.herokuapp.com/"
   index_puppy = @browser.find_elements(class: 'name').find_index { |puppy| puppy.text == 'Brook' }
  @browser.find_elements(class: 'rounded_button')[index_puppy].click
  adopt_me=@browser.find_element(:class=>'rounded_button').click
  click_collar=@browser.find_element(:id=>'collar').click
  complete_adoption=@browser.find_elements(:class=>'rounded_button')[0].click
  @browser.find_element(:id=>'order_name').send_keys('Anu')
  @browser.find_element(:id=>'order_address').send_keys('747')
  @browser.find_element(:id=>'order_email').send_keys('xx@gmail.com')
  select_pay_type_element = @browser.find_element(:id => 'order_pay_type')
  select_pay_type = Selenium::WebDriver::Support::Select.new(select_pay_type_element)
  select_pay_type.select_by(:text,'Check')
  place_order=@browser.find_element(:name=>'commit').click
end

When(/^I checkout with an empty name$/) do
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
  index_puppy = @browser.find_elements(class: 'name').find_index { |puppy| puppy.text == 'Brook' }
  @browser.find_elements(class: 'rounded_button')[index_puppy].click
  adopt_me=@browser.find_element(:class=>'rounded_button').click
  click_collar=@browser.find_element(:id=>'collar').click
  complete_adoption=@browser.find_elements(:class=>'rounded_button')[0].click
  order_name_text=@browser.find_element(:id=>'order_name')
  order_name_text.send_keys('')
  ss=order_name_text.attribute('value')
  if(ss=="")
    puts "Name Blank"
  else
    puts ss
  end
  order_address_text=@browser.find_element(:id=>'order_address')
  order_address_text.send_keys('')
  aa=order_address_text.attribute('value')
  if (aa=="")
    puts "Address Blank"
  else
    puts aa
  end
  order_email_text=@browser.find_element(:id=>'order_email')
  order_email_text.send_keys('')
  ee=order_email_text.attribute('value')
  if (ee=="")
    puts "Email Blank"
  else
    puts ee
  end

  select_pay_type_element = @browser.find_element(:id => 'order_pay_type')
  # select_pay_type = Selenium::WebDriver::Support::Select.new(select_pay_type_element)
  # select_pay_type.select_by(:text,'Check')
  zz=select_pay_type_element.text
  #select_pa.click
  if (zz=='Select a payment method ')
    puts "pay type not selected"
  end

  place_order=@browser.find_element(:name=>'commit').click
end

Then(/^I should see the error message Name can't be blank$/) do
  error= @browser.find_elements(:xpath=>'//*[@id="error_explanation"]/ul/li')
  error.each do|yy|
    puts yy.text
  end
end