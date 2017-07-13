require_relative "../../../../acceptance_tests/features/page_model/android/page"

module Android
module MenuScreen
  include Page

  def verify_login_button
    text="Login Page"
    find_element(:xpath, "//*[@content-desc='#{text}']|//*[@text='#{text}']")
  end

  def tap_login_button

  end
end
  end