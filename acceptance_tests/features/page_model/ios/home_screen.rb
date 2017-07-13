require_relative "../../../../acceptance_tests/features/page_model/ios/page"

class HomeScreen < Page

  @@home_screen_title = Configuration.get_localized_text('home_screen_title')

  def verify_home_screen_title
    text_exact @@home_screen_title
  end

  def tap_button element_name
    wait { text(element_name).click }
  end

end

