When(/^I go to shoe website$/) do
  @browser.navigate.to "http://shoestore-manheim.rhcloud.com/definition"
end

And(/^I enter the email to the text field$/) do
  input_email=@browser.find_element(:id=>'remind_email_input')
  email=input_email.send_keys('xx@gmail.com')
  email_id=input_email.attribute('value')
  puts email_id
end

And(/^i click on submit button$/) do
  submit=@browser.find_element(:xpath=>'//*[@id="remind_email_form"]/div/input[2]').click
end

And(/^I should see the thank you message$/) do
  notice=@browser.find_element(:id=>'flash')
  notice_text=notice.text.c
  expect(notice_text).to eq('Thanks! We will notify you of our new shoes at this email: xx@gmail.com')
end