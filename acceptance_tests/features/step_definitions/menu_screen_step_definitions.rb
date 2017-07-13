Then(/^I should be able to see the Login button$/) do
  @menupage = MenuScreen.new(driver)
  @menupage.verify_login_button
end


Then(/^I should be able to see My page button$/) do
  pending # express the regexp above with the code you wish you had
end