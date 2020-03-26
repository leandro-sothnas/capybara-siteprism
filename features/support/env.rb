require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'
require 'os'
require 'site_prism'

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV['ENV_TYPE']}.yaml"))

case ENV['BROWSER']
when 'chrome'
  @driver = :selenium_chrome

when 'iphone'
  Capybara.register_driver :iphone do |app|
    Capybara::Selenium::Driver.new(app,
      browser: :chrome,
      desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
        'goog:chromeOptions' => {
          'mobileEmulation' => {
            'deviceMetrics' => { 'width' => 360, 'height' => 640, 'pixelRatio' => 3.0 },
            'userAgent' => 'Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 5 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19'
          }
        }
    ))
  end
  @driver = :iphone

when 'headless'
  Capybara.register_driver :selenium_chrome_headless do |app|
    chrome_options = Selenium::WebDriver::Chrome::Options.new.tap do |opts|
      opts.add_argument '--headless'
      opts.add_argument '--disable-gpu'
      opts.add_argument '--no-sandbox'
      opts.add_argument '--disable-site-isolation-trials'
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)
  end
  @driver = :selenium_chrome_headless
else
  puts 'Invalid browser'
end

Capybara.configure do |config|
  config.default_driver = @driver
  config.app_host = CONFIG['url']
  config.default_max_wait_time = 10
end

# Incognito Mode
Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.load_selenium
  browser_options = ::Selenium::WebDriver::Chrome::Options.new.tap do |opts|
    opts.args << '--incognito'
  end
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options)
end
