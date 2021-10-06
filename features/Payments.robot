*** Settings ***

Library        SeleniumLibrary
Library        BuiltIn

Resource       ../support/BDDConfig.robot
Resource       ../support/Hooks.robot

Resource       ../keywords/HomePage_keywords.robot
Resource       ../keywords/PaymentsPage_keywords.robot

Test Setup      Open Web browser  https://app.tst.cgd.live.backbaseservices.com/business-banking-app  firefox
#Test Teardown   Close browser opened


*** Test Cases ***

Scenario: Submit a Social Security Payment Successfully
    [Tags]                                                SP1
    Given I am logged on the application  300000004  159357
    And I choose the Social Security menu option on Payments section
    When I fill out the social security payment form with the right values
    And I submit the social security payment form
    Then The review payment screen should be successfully presented

Scenario: Submit a Service Payment Successfully
    [Tags]                                                SP1

    Given I am logged on the application  300000004  159357
    And I choose the Services menu option on Payments section
    When I fill out the service payment form with the right values
    And I submit service payment form
    Then The review payment screen should be successfully presented
