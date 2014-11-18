When(/^I open the parking calculator website$/) do
  @browser.navigate.to "http://adam.goucher.ca/parkcalc/"
end

# And(/^I choose the lot$/) do
#
#   select = Selenium::WebDriver::Support::Select.new(@browser.find_element(:id=>'Lot'))
# #  select.deselect_all()
#   select.select_by(:text,"Economy Parking")
#   # lot=@browser.find_elements(:id=>'Lot')
#   #  lot.each do|lo|
#   #   if(lo.text=='Economy Parking')
#   #    lo.select()
#   #    break
#   end
#
# end
#
# end

And(/^I enter the entry date and time$/) do

entrytime=@browser.find_element(:id=>'EntryTime')
entrytime.clear()

currenttime = DateTime.now
# puts currenttime
# x=currenttime+10
# puts x
entrytime.send_keys(currenttime.strftime("%H:%M"))
#sleep(2)

@browser.find_elements(:name=>'EntryTimeAMPM')[1].click
#sleep(2)

entrydate=@browser.find_element(:id=>'EntryDate')
entrydate.clear()

entrydate.send_keys(currenttime.strftime("%m/%d/%Y"))
  #sleep(2)
end

And(/^I enter the leaving date and time$/) do
  exittime=@browser.find_element(:id=>'ExitTime')
  exittime.clear()

  newtime = DateTime.new(2014,10,10,12,50,30)
  exittime.send_keys(newtime.strftime("%H:%M"))
#sleep(2)

  @browser.find_elements(:name=>'EntryTimeAMPM')[1].click
#sleep(2)

  exitdate=@browser.find_element(:id=>'ExitDate')
  exitdate.clear()

  exitdate.send_keys(newtime.strftime("%m/%d/%Y"))
#sleep(2)
end

And(/^I click on the calculate button$/) do
  @browser.find_element(:name=>'Submit').click
  sleep(2)
end



And(/^I select the parking type "([^"]*)"$/) do |arg|
  dropdown = @browser.find_element(:id=>'Lot')
  #dropdown.clear()
  select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  select_list.select_by(:text, arg)
end