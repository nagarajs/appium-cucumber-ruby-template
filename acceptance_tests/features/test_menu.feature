Feature:
  As a mobile app user,I want to launch the app and navigate to menu

  @android
  Scenario: verify menu buttons
    Given I am on the home screen
    When I tap on the menu button
    Then I should be able to see the Login button

  @ios
  Scenario: Verify button on ios UICatalog app
    Given I am on the home screen
    When I tap on the "Action Sheets" button
    And I tap on the "Okay / Cancel" button
