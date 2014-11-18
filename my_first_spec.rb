require 'rspec'
require 'selenium-webdriver'

describe 'My behaviour' do
before(:all)do
  @browser= Selenium::WebDriver.for :chrome
  @browser.navigate.to "http://puppies.herokuapp.com/"
end
  it 'should do something' do

    links=@browser.find_elements(:tag_name=>'a')
     links.each do|x|
       if x.text=='Adopt a Puppy'
         puts 'a'
       end
next


         if x.text=='Animal Shelters'
       break
    end
  after(:all) do
    @driver.quit
  end
end
