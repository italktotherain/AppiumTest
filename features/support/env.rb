require 'appium_lib'
require 'selenium-webdriver'

# Simulator
# def appium_capabilities
#   {
#     'noReset' => true,
#     'platformName' => 'iOS',
#     'deviceName' => 'iPhone SE',
#     'udid' => 'CDF6F923-7F8B-47FC-B84A-7CD7FCFCADE5',
#     'automationName' => 'XCUITest',
#     'app' => '/Users/selena.grant/RubymineProjects/AppiumTest/simulators/ipadsimulator/IntegrationApp.app'
#   }
# end

# Real Device
# IF YOU HAVE A SIMULATOR OPEN IT WILL SOMETIMES JUST CHOOSE TO RUN THERE, I DON'T KNOW WHY
def appium_capabilities
  {
      'noReset' => true,
      'usePrebuiltWDA' => true,
      'useNewWDA' => false,
      'platformName' => 'iOS',
      'deviceName' => "Selena's iPad",
      'xcodeOrgId' => '47FW5282Z6',
      'xcodeSigningId' => 'iPhone Developer',
      'udid' => '689da3b9d1eebcffb168729858cfad85163777fd',
      'automationName' => 'XCUITest',
      'app' => '/Users/selena.grant/Library/Developer/Xcode/DerivedData/WebDriverAgent-clhtuaoobwljejaryomtzsvxldkt/Build/Products/Debug-iphoneos/IntegrationApp.app',
      'showIOSLog' => true,
      'newCommandTimeout' => '220000'
  }
end

def server_url
  'http://127.0.0.1:4723/wd/hub'
end

def driver
  @driver ||= Selenium::WebDriver.for(:remote, :desired_capabilities => appium_capabilities, :url => server_url)
end

# NOTE: This closes the app, but does not kill the simulator
After { driver.quit }
