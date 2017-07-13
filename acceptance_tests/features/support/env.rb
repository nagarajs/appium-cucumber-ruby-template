
require 'appium_lib'
require 'cucumber/ast'
require_relative "../../../acceptance_tests/features/page_model/android/android_app_screens"
require_relative "../../../acceptance_tests/features/page_model/ios/ios_app_screens"


def load_appium_configuration platform
  Appium.load_appium_txt :file => (File.join(File.dirname(__FILE__), "#{platform}/appium.txt")), verbose: true
end
caps = load_appium_configuration "ios"

Appium::Driver.new(caps)
Appium.promote_appium_methods Object

Before do
  #@test_app ||= AndroidAppScreens.new(driver)
  @test_app ||= IosAppScreens.new(driver)

end


