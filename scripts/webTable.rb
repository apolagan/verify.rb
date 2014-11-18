require 'selenium/webdriver'
require 'rspec/expectations'

@browser=Selenium::WebDriver.for :chrome
@browser.navigate.to "http://www.toolsqa.com/automation-practice-table"
city=@browser.find_element(:xpath=>'//*[@id="content"]/table/tbody/tr[1]/td[2]')
link=@browser.find_element(:xpath=>'//*[@id="content"]/table/tbody/tr[1]/td[6]/a')
link.click

puts city.text

clock_tower=@browser.find_elements(:xpath=>'//*[@id="content"]/table/tbody/tr[2]/td[1]')
clock_tower.each do|s|
  puts s.text
end

(0..4).each do|x|
  value=@browser.find_elements(:xpath=>'//*[@id="content"]/table/tbody/tr[2]/td')[x]
  puts value.text
x+=1
end

#sridhar code###
# # #// Grab the tabled
# table = @browser.find_elements(:id=>'content')[5]
#
# # #// Now get all the TR elements from the table
# allRows = @browser.find_elements(:tag_name=>'tr')
# # #// And iterate over them, getting the cells
# # # (WebElement row : allRows) {
# #   cells = @browser.find_elements(:tag_name => 'td')
# table.each do|y|
#   puts y.text
# end
#
# allRows.each do |x|
#   puts x.text
# end
# # puts cells
@browser.quit


# @browser=Selenium::WebDriver.for :chrome
# @browser.navigate.to "http://www.toolsqa.com/automation-practice-table"
# #### Check that the table
# table = @browser.find_element(:class =>'tsc_table_s13')
# #### Print full table contents
# puts table.text
#
# #### All cells of the table
# # @browser.find_elements(:xpath => "//table[@class='tsc_table_s13']/tbody/tr/td").each do |r|
# #   puts r.text
# # end
# #### Print the values from the 1'st row of the table
# row1 = @browser.find_elements(:xpath => "//table[@class='tsc_table_s13']/tbody/tr")[0].text
# puts "Value from the 1'st row of the table: " + row1
# #### Print the values from the 2'nd row of the table
# row2 = @browser.find_elements(:xpath => "//table[@class='tsc_table_s13']/tbody/tr")[1].text
# puts "Value from 2'nd row of the table: " + row2

