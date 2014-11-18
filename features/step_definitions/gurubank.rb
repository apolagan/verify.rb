When(/^I go to the gurubank website$/) do
  @browser.navigate.to "http://www.demo.guru99.com/V4/"
end

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


And(/^I enter the userid and password$/) do
  dir_to_yml = Dir.pwd + '/features/support/datafiles'
  @yml_hash = YAML.load_file("#{dir_to_yml}/guru.yml")
  puts dir_to_yml
  @yml_hash.each do |key, value|
    puts 'testing'
    puts key+':'+value

    @browser.find_element(:name=>'uid').send_keys(key)
    @browser.find_element(:name=>'password').send_keys(value)
    @browser.find_element(:name=>'btnLogin').click

      if (alert_present?)
      @alert.accept
      puts "continue with execution"
    else
      sleep(5)

      @browser.find_element(:link_text=>'Log out').click
      @browser.switch_to.alert.text=='You Have Successfully Logged Out!! '
        @browser.switch_to.alert.accept
        #@browser.quit

      end
    end
  end


