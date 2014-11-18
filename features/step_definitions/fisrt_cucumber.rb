When(/^I open puppies website$/) do

  @browser.navigate.to "http://puppies.herokuapp.com/"
end

And(/^I click view detail of brook$/) do
  view_details=@browser.find_elements(:class=>'rounded_button')[0]
  view_details.click
end

Then(/^I should see "([^"]*)" button$/) do |arg|
  adopt_me=@browser.find_element(:class=>'rounded_button')
  text_value_button = adopt_me['value']
  expect(text_value_button).to eq(arg)
end

#And(/^I click on Adopt Me button$/) do
  #@browser.find_element(:class=>'rounded_button').click
 # end

And(/^I check the acessories$/) do
  click_collar=@browser.find_element(:id=>'collar').click

end

And(/^I click on Adopt another puppy button$/) do
  add_another_puppy=@browser.find_elements(:class=>'rounded_button')[1].click
end

And(/^I click on view detail of hanna$/) do
  puppy_two=@browser.find_elements(:class=>'rounded_button')[1].click
end

And(/^I check the accessories and click on complete adoption$/) do
  collar=@browser.find_elements(:id=>'collar')[0].click
 toy=@browser.find_elements(:id=>'toy')[1].click
  adopt_puppy=@browser.find_elements(:class=>'rounded_button')[0].click
end


And(/^I enter the payment details "([^"]*)" and "([^"]*)" and "([^"]*)"and"([^"]*)" and click on place order button$/) do |name, addr, email,check|
  @browser.find_element(:id=>'order_name').send_keys(name)
  @browser.find_element(:id=>'order_address').send_keys(addr)
  @browser.find_element(:id=>'order_email').send_keys(email)
  #@browser.find_element(:id=>'order_pay_type').send_key('Check')
  select_pay_type_element = @browser.find_element(:id => 'order_pay_type')
  select_pay_type = Selenium::WebDriver::Support::Select.new(select_pay_type_element)

  select_pay_type.select_by(:text,check)

  #select_pay_type.select_by(:text,Check)

  place_order=@browser.find_element(:name=>'commit').click
end

Then(/^I should see the text "([^"]*)"$/) do |arg|

  success_text = @browser.find_element(:id => 'notice').text
  expect(success_text).to eq(arg)
end

And(/^I close the browser$/) do
  @browser.close
end

And(/^I click on adopt me button$/) do
  @browser.find_element(:class=>'rounded_button').click
end

And(/^I check the accessories$/) do
  collar=@browser.find_elements(:id=>'collar')[0].click
end

And(/^I enter the payment details "([^"]*)" and "([^"]*)" and "([^"]*)"and"([^"]*)"$/) do |name, addr, email, check|
  @browser.find_element(:id=>'order_name').send_keys(name)
  @browser.find_element(:id=>'order_address').send_keys(addr)
  @browser.find_element(:id=>'order_email').send_keys(email)
  #@browser.find_element(:id=>'order_pay_type').send_key('Check')
  select_pay_type_element = @browser.find_element(:id => 'order_pay_type')
  select_pay_type = Selenium::WebDriver::Support::Select.new(select_pay_type_element)

  select_pay_type.select_by(:text,check)
end

And(/^I click on place order button$/) do
  @browser.find_element(:name=>'commit').click
end

And(/^I click on complete adoption$/) do
  adopt_puppy=@browser.find_elements(:class=>'rounded_button')[0].click
end

And(/^I check the accessories for brook "([^"]*)"$/) do |index0|
  collar=@browser.find_elements(:id=>'collar')
  collar_valu=collar[index0.to_i]
  collar_valu.click
  sleep(3)
  toy=@browser.find_elements(:id=>'toy')
  toy_valu=toy[index0.to_i]
  toy_valu.click
  sleep(5)
end



# end(/^I check the accessories for Hanna"([^"]*)"$/) do |index1|
#   collar=@browser.find_elements(:id=>'collar')
#   collar_value=collar[index1.to_i]
#   collar_value.click
#   sleep(2)
#   toy=@browser.find_elements(:id=>'toy')
#   toy_value=toy[index1.to_i]
#   toy_value.click
#   sleep(5)
# end


And(/^I click on Adopt another puppy again$/) do
  add_another_third=@browser.find_elements(:class=>'rounded_button')[1].click
end

And(/^i click on View detail of dog$/) do
  puppy_three=@browser.find_elements(:class=>'rounded_button')[2].click
  sleep(5)
end

And(/^I check the accessories for Maggie"([^"]*)"$/) do |index2|
  carrier=@browser.find_elements(:id=>'carrier')
  carrier_value=carrier[index2.to_i]
  carrier_value.click
  sleep(3)
  vet=@browser.find_elements(:id=>'vet')
  vet_value=vet[index2.to_i]
  vet_value.click
  sleep(5)
end


And(/^I check the accessories for Hanna "([^"]*)"$/) do |index1|
  collar=@browser.find_elements(:id=>'collar')
  collar_value=collar[index1.to_i]
  collar_value.click
  sleep(2)
  toy=@browser.find_elements(:id=>'toy')
  toy_value=toy[index1.to_i]
  toy_value.click
  sleep(5)
end