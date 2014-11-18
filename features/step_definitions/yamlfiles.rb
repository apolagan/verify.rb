When(/^I open a yml file$/) do
  dir_to_yml = Dir.pwd + '/features/support/datafiles'
  @yml_hash = YAML.load_file("#{dir_to_yml}/data.yml")
  p dir_to_yml
end

Then(/^I print the hash$/) do
  p @yml_hash
end

Then(/^I print the keys and values$/) do
#   puts @yml_hash.keys
#   puts @yml_hash.values
# puts @yml_hash.length
#   #puts @yml_hash.index('Anitha')
  @yml_hash.store("Town","Wheeling")
 #puts @yml_hash.to_hash
#puts @yml_hash.to_a
end

# Then(/^I print keys values using ruby enumerations$/) do
#   pending
# end

Then(/^I print keys values using ruby enumerations$/) do
  @yml_hash.each do |key, value|
    puts key + ' : ' + value
  end
end