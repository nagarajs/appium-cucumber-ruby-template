require_relative "../../../../acceptance_tests/features/page_model/android/page"

module Android
module HomeScreen
  class << self
  include Page

  @@home_screen_title= Configuration.get_localized_text 'home_screen_title'

  def verify_home_screen_title
    puts @@home_screen_title
    find_element(:xpath, "//*[@content-desc='#{@@home_screen_title}']|//*[@text='#{@@home_screen_title}']")
  end

  def tap_menu
    find_element(:id, "ReferenceApp").click
    sleep 2
  end
end
end
  end

