@androidApp
@regression
@browser
Feature: Browser Address Bar

  Scenario: Address bar
  Navigate to websites using browser address bar.
    Given the app displayed the splash animation
    And I have imported my wallet
    And I tap No Thanks on the Enable security check screen
    And I tap No thanks on the onboarding welcome tutorial
    And I navigate to the browser
    And I have 1 browser tab displayed
    When I tap on address bar
    Then browser address view is displayed
    And the "https://portfolio.metamask.io/explore?MetaMaskEntry=mobile/" url is displayed in address field
    When I tap on "clear icon" in address field
    Then address field is cleared
    When I tap on "Cancel button" in address field
    Then browser address bar input view is no longer displayed
    And the browser view is on the "https://portfolio.metamask.io/explore?MetaMaskEntry=mobile/" website
    When I tap on address bar
    And I navigate to "reddit.com"
    Then the browser view is on the "https://www.reddit.com/" website
