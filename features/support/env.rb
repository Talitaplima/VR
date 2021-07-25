require "capybara/dsl"
require "capybara/cucumber"
require "selenium-webdriver"
require "rspec"
require "rspec/expectations"
require "httparty"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "https://www.vr.com.br/"
  config.default_max_wait_time = 10
end
EL = YAML.load_file(File.join(Dir.pwd, "features/support/config/elementos.yaml"))
