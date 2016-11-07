require "capybara/cucumber"
require "capybara-webkit"
require "selenium-webdriver"
require "site_prism"
require "faker"
require "cpf_faker"
require "rspec"

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 10
Capybara.javascript_driver = :webkit

Capybara::Webkit.configure do |config|
  config.allow_url("https://youse.com.br")
  config.block_unknown_urls
end