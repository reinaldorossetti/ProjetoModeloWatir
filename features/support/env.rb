require 'rspec/core'
include RSpec::Matchers
require 'rspec/expectations/handler'
require "tapestry"
require 'watir'

Dir["../framework/*.rb"].each {|file| require file; puts file }
Dir["../pages/selectors/*.rb"].each {|file| require file; puts file }
Dir["../pages/*.rb"].each {|file| require file ; puts file}

def get_driver(url, browser)
  @driver = Watir::Browser.start url, browser
  return @driver
end

#@driver = Watir::Browser.start 'http://bit.ly/watir-webdriver-demo', :firefox
$driver = get_driver('http://bit.ly/watir-webdriver-demo', :firefox)