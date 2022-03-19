
require "capybara/cucumber"
require "capybara/dsl"  # esse e diferente
require "capybara/rspec" #outro diferente
# require "selenium/webdriver"  # começou a dar pau tive que desativar...kkk
# Unable to activate webdrivers-4.6.1, because selenium-webdriver-4.1.0 conflicts with selenium-webdriver (>= 3.0, < 4.0)
#  (Gem::ConflictError)
require "webdrivers/chromedriver" ## Foi a solução de um grande problema #ChromeWebdriver versão desatualizada#
require "site_prism"
require 'selenium/webdriver/chrome'

Capybara.configure do |config| ## do(Faz)
  config.default_driver = :selenium_chrome  # default drive = unidade padrão
  config.app_host = 'https://automacaocombatista.herokuapp.com'
  config.default_max_wait_time = 15
  Capybara.page.driver.browser.manage.window.maximize

end


=begin

require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://automacaocombatista.herokuapp.com/'
  config.default_max_wait_time = 5

end



=end