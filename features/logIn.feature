Feature: Appium Testing

#  Scenario: Select Alerts test app
#    Given I have App running with appium
#    Then I select Alerts

  Scenario: Create an App Alert
    Given I have App running with appium
    Then I select Alerts
    And I select Create App Alert
    Then I close the alert popup
    Then I go back to the previous page

  Scenario: Type in text field
    Given I have App running with appium
    And I go to the Attributes page
    Then I type "This is a test of Appium on a device!" in the second text field
