require 'selenium/webdriver'
require'rspec/expectations'

 @browser= Selenium::WebDriver.for :chrome
# @browser.navigate.to"http://www.demoqa.com"
# @browser.find_element(:class=>'dropdown-toggle').click
# @browser.find_element(:id=>'menu-item-73').click
# title_text=@browser.find_element(:class=>'entry-title')
# puts title_text.text
# ####drag and drop####
# drag_item=@browser.find_element(:id=>'draggable')
# puts drag_item.text
# @browser.action.drag_and_drop_by(drag_item,100,100).perform
# sleep(1)
# ###constarint movement####
# @browser.find_element(:id=>'ui-id-2').click
# drag_vertical=@browser.find_element(:id=>'draggabl')
# puts drag_vertical.text
# @browser.action.drag_and_drop_by(drag_vertical,25,25).perform
# sleep(2)
# source=@browser.find_element(:id=>'draggabl3')
# puts source.text
# target=@browser.find_element(:id=>'draggabl5')
# puts target.text
# @browser.action.drag_and_drop(source,target).perform
#
# sleep(10)


@browser.navigate.to"https://secure.photobucket.com/register"
#source=@browser.find_element(:xpath=>'//*[@id="register"]/div[2]/div/div[1]/div/div[10]/div[1]/div/fieldset/div/div/div[1]/i')
source=@browser.find_element(:class=>'arrow')
puts source.location
puts source.inspect
puts source.enabled?
puts source.ref
@browser.action.click_and_hold(source).perform
#@browser.action.click_and_hold(source).perform
#target=@browser.find_element(:xpath=>'//*[@id="register"]/div[2]/div/div[1]/div/div[10]/div[1]/div/fieldset/div/div/div[2]/i')
target=@browser.find_element(:class=>'dottedBorder')
puts target.location
@browser.action.drag_and_drop(source,target).perform
#@browser.action.drag_and_drop_by(source,447.5,710).perform

sleep(10)
@browser.quit

