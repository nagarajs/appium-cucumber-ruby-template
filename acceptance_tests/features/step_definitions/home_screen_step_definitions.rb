Given(/^I am on the home screen$/) do
  @test_app.home_screen.verify_home_screen_title
end

When(/^I tap on the menu button$/) do
  @test_app.home_screen.tap_menu
end

When(/^I tap on the "(.*?)" button$/) do |arg1|
  @test_app.home_screen.tap_button arg1
end


