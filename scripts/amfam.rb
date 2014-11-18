
require 'selenium-webdriver'
require 'rspec/expectations'

def alert_present?
  begin
    @alert= @browser.switch_to.alert
    puts "Alert present!"
    return true
  rescue
    puts "No alert present."
    return false
  end
end


@browser= Selenium::WebDriver.for :chrome
@browser.navigate.to"http://www.amfam.com"
products=@browser.find_element(:link_text=>'Products')
products.click
links=@browser.find_elements(:tag_name=>'li')
links_count=links.count()
puts links_count
@browser.find_element(:xpath=>'//*[@id="nav_products"]/li[1]/a').click
zip=@browser.find_element(:xpath=> '//*[@id="zipCode"]')
#p zip.text


zip_value=zip.send_keys(('60090').to_s)
go_bttn = @browser.find_element(:id => 'cta-geo').click

sleep(5)

#@browser.switch_to.alert[1]
#@browser.switch_to.alert.accept


if alert_present?
  @alert.accept
  puts "continue with execution"
end

@browser.find_element(:id => 'boxLeft').click
@browser.quit









# links.each do |x|

#   if x.text==' Auto'

#     x.click

#       end

# end






























