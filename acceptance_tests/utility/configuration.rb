
module Configuration
  class << self

  @string_data = 0

  def load_data
    if $locale == nil
      Configuration.set_locale
    end
    string_path = "/strings/" + $locale + ".yml"
    @string_data = YAML.load_file(File.dirname(__FILE__)  + string_path)
  end

  def get_data field
    Configuration.load_data
    return @string_data[field]
  end

  def set_locale
    if ENV['TEST_LANG'] == nil
      fail('The language is not set.Please set the TEST_LANG')
    else
      $locale = ENV['TEST_LANG']
      $model = ENV['MODEL']
    end
  end

  def get_locale
    Configuration.set_locale
    puts "The test language is set to: " + $locale
    return $locale
  end

  def get_localized_text field
    return Configuration::get_data field
  end

  end

end