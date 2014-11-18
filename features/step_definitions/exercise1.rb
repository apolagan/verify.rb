When(/^I go to ToolsQA\.com$/) do
  @browser.navigate.to "http://toolsqa.com/"
end

And(/^I get page title name and title length$/) do
   @title=@browser.title
  puts @title
  puts @title.length()
end

And(/^I get page URL and URL length$/) do
  @url=@browser.current_url()

end

And(/^I print URL and URL length$/) do
  puts @url
  puts @url.length()
end

And(/^I refresh the page$/) do
  @browser.navigate().refresh()
end

And(/^I get page source and page source length$/) do
@page_details=@browser.page_source()
end

And(/^I print page source and length$/) do
  puts @page_details
  puts @page_details.length()
end