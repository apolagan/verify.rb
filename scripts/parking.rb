require 'selenium-webdriver'

@browser=Selenium::WebDriver.for :chrome
  @browser.navigate.to "http://adam.goucher.ca/parkcalc/"



  select = Selenium::WebDriver::Support::Select.new(@browser.find_element(:id=>'Lot'))
#  select.deselect_all()
  select.select_by(:text,"Economy Parking")
  # lot=@browser.find_elements(:id=>'Lot')
  #  lot.each do|lo|
  #   if(lo.text=='Economy Parking')
  #    lo.select()
  #    break

#
# end
#
# end

  entrytime=@browser.find_element(:id=>'EntryTime')
  entrytime.clear()

  currenttime = DateTime.now
  entrytime.send_keys(currenttime.strftime("%H:%M"))
  #sleep(2)

  @browser.find_elements(:name=>'EntryTimeAMPM')[1].click
  #sleep(2)

  entrydate=@browser.find_element(:id=>'EntryDate')
  entrydate.clear()

  entrydate.send_keys(currenttime.strftime("%m/%d/%Y"))
  #sleep(2)


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



  @browser.find_element(:name=>'Submit').click
  #sleep(2)

@browser.quit


