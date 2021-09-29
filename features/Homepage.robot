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

Scenario: Verify Favorite Current Accounts Added to Dashboard    Given I am in the login page
        Given I am in the login page
        When I inform my credentials    300000099  666777
        Then I must be taken to my homepage
        And I need to see all my favorite current accounts