When(/^I open the guru (\d+) website$/) do |arg|
  #browser=Selenium::WebDriver.for :chrome
  @browser.navigate.to"http://www.demo.guru99.com/V4/"
  puts @browser.title
end

And(/^I enter the userid"([^"]*)"$/) do |uid|
  @browser.find_element(:name=>'uid').send_keys(uid)
end

And(/^I enter the password"([^"]*)"$/) do |pwd|
  @browser.find_element(:name=>'password').send_keys(pwd)
end

And(/^I click on login button$/) do
  @browser.find_element(:name=>'btnLogin').click
end

Then(/^I should see the text"([^"]*)"$/) do |arg|
  title_value=@browser.find_element(:class=>'barone').text
expect(title_value).to eq(arg)
  puts title_value
  @browser.quit
end