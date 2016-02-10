require 'capybara'
require 'capybara/cucumber'
require 'pry'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.default_driver = :chrome
  config.app_host   = 'http://localhost'
end

World(Capybara)