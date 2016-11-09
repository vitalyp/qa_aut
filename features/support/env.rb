require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

Dir[File.dirname(__FILE__) + '/../site_pages/*.rb'].each do |file|
  require file
end

Capybara.configure do |config|
  config.default_driver = :firefox
  config.javascript_driver = :firefox
  config.run_server = true
  config.default_selector = :css
  config.default_wait_time = 1
  config.match = :prefer_exact
  config.ignore_hidden_elements = false
end

Capybara.register_driver :firefox do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end
