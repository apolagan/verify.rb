
require 'selenium-webdriver'
require 'rspec/expectations'
@browser= Selenium::WebDriver.for :chrome
@browser.navigate.to"http://shoestore-manheim.rhcloud.com/definition"
(0..11).each do|x|
  month=@browser.find_elements(:xpath=>'//*[@id="header_nav"]/nav/ul/li')[x]
  month.click
  page_title=@browser.find_element(:class=>'title')
  puts page_title.text
     shoe_details=@browser.find_elements(:xpath=>'//div/table/tbody')
#check for the new shoe releases#
  if shoe_details.count()!=0
    #check for the shoe brand#
    shoe_brand=@browser.find_elements(:xpath=>'//div/table/tbody/tr[1]/td[2]/a')
    shoe_brand.each do|aa|
    if aa.text.nil?
      puts " Shoe Brand Missing"
    else
      puts aa.text
    end
    end
    #check for the shoe name#
    shoe_name=@browser.find_elements(:xpath=>'/div/table/tbody/tr[2]/td[2]')
    shoe_name.each do|nn|
      if nn.text!=''
        puts nn.text
      else
        puts " Shoe Name Missing"
      end
    end
    #check for the shoe price#
    shoe_price=@browser.find_elements(:xpath=>'//div/table/tbody/tr[3]/td[2]')
    shoe_price.each do|pp|
      if pp.text.nil?
        puts pp.text
      else
        puts " Shoe Price Missing"
      end
    end
    #check for the shoe description#
    shoe_description=@browser.find_elements(:xpath=>'//div/table/tbody/tr[4]/td[2]')
    shoe_description.each do|dd|
      if dd.text.empty?
        puts "Shoe Description Missing"
      else
        puts dd.text
      end
    end
     #check for the shoe_image#
  shoe_image=@browser.find_elements(:tag_name=>'img')
  shoe_image.each do|bb|
    if bb.attribute('src')!=''
      puts bb.attribute('src')
    else
      puts "Shoe Image Missing"
    end
  end
  x+=1
    else
    puts "No Shoe Releases For This Month"
    end
  sleep(2)
  end

@browser.quit
