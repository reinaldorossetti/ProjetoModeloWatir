require 'rspec/core'
include RSpec::Matchers
require 'rspec/expectations/handler'
require "tapestry"
require 'watir'
require 'selenium-webdriver'
require 'magic_encoding'
#require 'pry'

Dir["../framework/*.rb"].each {|file| require file; puts file }
Dir["../pages/selectors/*.rb"].each {|file| require file; puts file }
Dir["../pages/*.rb"].each {|file| require file ; puts file}

# start browser
client = Selenium::WebDriver::Remote::Http::Default.new
client.read_timeout = 90
Watir.default_timeout = 90 # timeout interno de espera do watir.

case ENV['BROWSER']
  when 'ie'
    $driver = Watir::Browser.new :ie, :http_client => client
  when 'ff'
    profile = Selenium::WebDriver::Firefox::Profile.new
    profile['browser.download.dir'] = 'c:\Downloads'
    profile['browser.download.folderList'] = 2
    profile['browser.helperApps.neverAsk.saveToDisk'] = 'application/zip'
    profile['pdfjs.disabled'] = true
  when 'chrome'
    $driver = Watir::Browser.new :chrome
  else
    $driver = Watir::Browser.new :ie, :http_client => client
end

$driver.goto('http://bit.ly/watir-webdriver-demo')
