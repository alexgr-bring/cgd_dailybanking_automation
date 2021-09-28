*** Settings ***

Library        SeleniumLibrary
Library        BuiltIn

Resource       ../support/BDDConfig.robot
Resource       ../support/Hooks.robot
Resource       ../keywords/LoginPage_keywords.robot
Resource       ../keywords/HomePage_keywords.robot

Test Setup      Open Web browser  https://app.tst.cgd.live.backbaseservices.com/business-banking-app  firefox
#Test Teardown   Close browser opened


*** Test Cases ***

Scenario: Performing a Succesfull Login on Daily Banking Web
    Given I am in the login page
    And I inform my credentials    300000098  666777
    Then I need to be taken to my homepage

Scenario: Performing a Failed Login on Daily Banking Web
    Given I am in the login page
    And I inform my credentials    300000098  999999
    Then I need to receive an error message and not be allowed to proceed
