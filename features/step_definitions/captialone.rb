When(/^I navigate to captial one website$/) do
  @browser.navigate.to "https://www.capitalone.com/"
end

And(/^I click on the credit cards$/) do
  credit_cards=@browser.find_element(:id=>'nav-primary-cc')
  cc=@browser.action.move_to(credit_cards)
  cc.perform
  Selenium::WebDriver::Wait.new(timeout: 10).until do
    @browser.find_element(:link_text => 'Browse All Cards').displayed?
  end

end

And(/^I click on the browse all cards$/) do
  @browser.find_element(:link_text=>'Browse All Cards').click
  # cards=@browser.find_elements(:class=>'first')
  # cardscount=@browser.find_elements(:class=>'first').count
  # puts cardscount
  # cards.each do|op|
  # puts op.text
  # end
end

And(/^I select the popular cards check box$/) do
  @browser.find_element(:id=>'cb-popular').click

end


And(/^I verify the count of displayed cards$/) do
  ppcard_names = @browser.find_elements(:partial_link_text=>'credit')
  ppcard_count=@browser.find_elements(:partial_link_text=>'credit').count
  puts ppcard_count
  ppcard_names.each do|op|
      puts op.text
     end
end

Then (/^I verify the displayed cards are  "([^"]*)"$/) do |index|
  list_ppcards = @browser.find_elements(:partial_link_text=>'credit')
  ppcard_index= list_ppcards.find_index { |cards| cards.text == index }

end