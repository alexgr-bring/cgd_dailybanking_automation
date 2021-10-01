*** Settings ***

Library        SeleniumLibrary
Library        BuiltIn

Resource       ../support/BDDConfig.robot
Resource       ../support/Hooks.robot

Resource       ../keywords/HomePage_keywords.robot
Resource       ../keywords/AccountPage_keywords.robot

Test Setup      Open Web browser  https://app.tst.cgd.live.backbaseservices.com/business-banking-app  firefox
#Test Teardown   Close browser opened


*** Test Cases ***

Scenario: Verify All the Accounts Associated to the User    Given I am in the login page
    Given I am logged on the application  300000004  159357
    When I choose the menu option Accounts
    And I need to see all the accounts associated to me
    Then I need to see the details of these accounts
