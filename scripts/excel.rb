require 'selenium/webdriver'
require 'rspec/expectations'
require 'rubyXL'
require 'zip'


workbook=RubyXL::Workbook.new
worksheet=workbook.add_worksheet('sheet0')
worksheet.sheet_name='Anitha'
worksheet.add_cell(0,0,'firstname')
worksheet.add_cell(0,1,'lastname')
workbook.write("C:/Selenium/selenium_training/features/support/datafiles/dimple.xlsx")
#workbook = RubyXL::Parser.parse('C:/Selenium/selenium_training/features/support/datafiles/dimple.xlsx')

worksheet.add_cell(1, 0, 'Anitha')      # Sets cell A1 to string "A1"
worksheet.add_cell(1, 1, 'p')
worksheet.add_cell(2, 0, 'vishal')      # Sets cell A1 to string "A1"
worksheet.add_cell(2, 1, 'v')
workbook = RubyXL::Parser.parse('C:/Selenium/selenium_training/features/support/datafiles/dimple.xlsx')
sdfg=workbook.worksheets[1]
puts sdfg.extract_data
#worksheet.add_cell(1, 1, '', 'A1')  # Sets formula in the cell B1 to '=A1'



# #@browser= Selenium::WebDriver.for :chrome
# dir_to_xl = Dir.pwd+ '/features/support/datafiles'
# puts dir_to_xl
# read_workbook = RubyXL::Parser.parse("#{dir_to_xl}/new.xlsx")
# #@read_workbook= RubyXL.load '#{dir_to_xl}/{demo.xlsx}'
# # @browser.navigate.to"http://store.demoqa.com/"
# # my_account=@browser.find_element(:class=>'account_icon')
# # my_account.click
# # user_name=@browser.find_element(:id=>'log')
# # user_name.send_keys('Apolag')
# # password_text=@browser.find_element(:id=>'pwd')
# # password_text.send_keys('30PMpwqgGRHF')
# # login_button=@browser.find_element(:id=>'login')
# # login_button.click
#
# sheet1=read_workbook.worksheets[0]
# puts sheet1




# sheet1 = @read_workbook[0]
# sheet1_data = sheet1.extract_data
# puts "Sheet 1 data:"
# puts sheet1_data
#
# sheet2=@read_workbook[1]
# sheet2_data=sheet2.extract_data
# puts "sheet 2 data:"
# puts sheet2_data
# row1_data = sheet1_data[0]
# puts "Row 1 data"
# puts row1_data
# cell_a1=sheet1_data[0][0]
# puts "Cell A1:"
# puts cell_a1
# #C:\Selenium/selenium_training/features/support/datafiles/sdfg.xlsx
#C:/Selenium/selenium_training/features/support/datafiles"