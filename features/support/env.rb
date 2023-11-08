require 'rspec'
require 'appium_lib'
require 'pry'
require 'cucumber'

CUCUMBER_PUBLISH_QUIET=true

time  = Time.new
time = time.strftime('%d-%m-%Y')
$logger = Logger.new("./exec-logs/exec-log-#{time}.log")

caps = Appium.load_appium_txt file: File.expand_path("#{Dir.pwd}/config/appium.txt", __FILE__), verbose: true

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
