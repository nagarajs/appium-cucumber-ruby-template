require_relative "../../../../acceptance_tests/utility/configuration"
require 'appium_lib'

module Android
  module Page
    class << self

      def initialize(driver)
        @driver = driver
      end

      def self.get_element_text field
        get_language
        return Configuration.new.get_data field
      end

    end
  end
end

