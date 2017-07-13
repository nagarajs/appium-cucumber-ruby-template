require_relative "../../../../acceptance_tests/features/page_model/ios/home_screen"
require_relative "../../../../acceptance_tests/features/page_model/ios/menu_screen"


class IosAppScreens < Page

  def home_screen
   @home_screen = HomeScreen.new(driver)
  end

  def menu_screen
   @menu_screen = MenuScreen.new(driver)
  end

end

