def sign_in

end

def product_selection

end


def alert_present?
  begin
    sign_in
    product_selection
    @alert= @browser.switch_to.alert
    puts "Alert present!"
    return true
  rescue
    puts "No alert present."
    return false
  end
end


if (alert_present?)
  @alert.accept
  puts "continue with execution"
end