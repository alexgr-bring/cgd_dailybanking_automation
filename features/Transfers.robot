*** Settings ***

Library        SeleniumLibrary
Library        BuiltIn

Resource       ../support/BDDConfig.robot
Resource       ../support/Hooks.robot

Resource       ../steps/HomePage_steps.robot
Resource       ../steps/TransfersPage_steps.robot
Resource       ../keywords/OTPValidation_keywords.robot

Test Setup      Open Web browser  https://app.tst.cgd.live.backbaseservices.com/business-banking-app  firefox
#Test Teardown   Close browser opened


*** Test Cases ***

Scenario: Submit a transfer between International Accounts Successfully
    [Tags]

    Given I am logged on the application  300000099  666777
    And I choose the International Account menu option on Transfers section
    And I fill out the International Account Transfer form with the right values
    When I confirm the International Account transfer form
    And I submit the transfer on the review payment screen
    Then I must be requested to inform the OTP validation code
