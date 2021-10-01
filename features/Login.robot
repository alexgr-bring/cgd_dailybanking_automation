*** Settings ***

Library        SeleniumLibrary
Library        BuiltIn

Resource       ../support/BDDConfig.robot
Resource       ../support/Hooks.robot

Resource       ../keywords/LoginPage_keywords.robot

Test Setup      Open Web browser  https://app.tst.cgd.live.backbaseservices.com/business-banking-app  firefox
#Test Teardown   Close browser opened


*** Test Cases ***

Scenario: Perform a Succesfull Login on Daily Banking Web
    Given I am in the login page
    When I inform my credentials    300000004  159357
    Then I must be taken to my homepage

Scenario: Perform a Failed Login on Daily Banking Web
    Given I am in the login page
    When I inform my credentials    300000004  999999
    Then I need to receive an error message not allowing me to proceed
