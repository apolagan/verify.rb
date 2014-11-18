And(/^I Click on About link \( On top navigation\)$/) do
  about_link=@browser.find_element(:xpath=>'//*[@id="main-nav"]/li[5]/a')
  about_link.click
end

And(/^I Come back to Home page \(Use ‘Back’ command\)$/) do
  @browser.navigate.back
end

And(/^I Again go back to About page \(This time use ‘Forward’ command\)$/) do
  @browser.navigate.forward
  sleep(5)
end

And(/^I Again come back to Home page \(This time use ‘To’ command\)$/) do
  @browser.navigate.back
end

And(/^I Refresh the Browser \(Use ‘Refresh’ command\)$/) do
  @browser.navigate.refresh
  sleep(5)
end