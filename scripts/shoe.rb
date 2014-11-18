
require 'selenium-webdriver'
require 'rspec/expectations'
@browser= Selenium::WebDriver.for :chrome
@browser.navigate.to"http://shoestore-manheim.rhcloud.com/definition"
(0..11).each do|x|
  month=@browser.find_elements(:xpath=>'//*[@id="header_nav"]/nav/ul/li')[x]
  month.click
  page_title=@browser.find_element(:class=>'title')
  puts page_title.text
  shoe_details=@browser.find_elements(:xpath=>'//div/table/tbody/tr')
  puts shoe_details.count()
  shoe_details.each do|aa|
    if aa.text!=''
      puts aa.text
    else
      puts "shoe Image"
           end
    end

  shoe_image=@browser.find_elements(:tag_name=>'img')
  shoe_image.each do|bb|
    if bb.attribute('src')!=''
      puts bb.attribute('src')
    else
      puts "No Image"
    end
  end

  x+=1
  end


@browser.quit

