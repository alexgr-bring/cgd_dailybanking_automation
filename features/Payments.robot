*** Settings ***

Library        SeleniumLibrary
Library        BuiltIn

Resource       ../support/BDDConfig.robot
Resource       ../support/Hooks.robot

Resource       ../steps/HomePage_steps.robot
Resource       ../steps/PaymentsPage_steps.robot

Test Setup      Open Web browser  https://app.tst.cgd.live.backbaseservices.com/business-banking-app  firefox
#Test Teardown   Close browser opened


*** Test Cases ***

Scenario: Submit a Social Security Payment Successfully
    [Tags]  SP1-AC1
    Given I am logged on the application  300000098  666777
    And I choose the Social Security menu option on Payments section
    And I fill out the social security payment form with the right values
    When I confirm the social security payment form
    And I submit the payment on the review payment screen

Scenario: Submit a Service Payment Successfully
    [Tags]  SP1-AC1

    Given I am logged on the application  300000004  159357
    And I choose the Services menu option on Payments section
    And I fill out the service payment form with the right values
    When I confirm service payment form
    And I submit the payment on the review payment screen
