*** Settings ***


Library        SeleniumLibrary
Library        BuiltIn

Resource      ../keywords/PaymentsPage_keywords.robot

Variables      ../element_mapping/PaymentsPage_mapping.py

Variables      ../data/PaymentsPage_data.py



*** Keywords ***

I fill out the social security payment form with the right values
    Set Selenium Speed    1

    Wait until element is visible                           ${MAP_SCREEN_NAME}                                                    10
    ${VAR_SCREEN_NAME}                Get Text              ${MAP_SCREEN_NAME}
    ${VAR_SCREEN_NAME}                Convert To Uppercase  ${VAR_SCREEN_NAME}
    Should Be Equal As Strings                              ${VAR_SCREEN_NAME}               ${DATA_SOCIAL_SECURITY_NAME}

    Set Selenium Speed    0

    Wait until element is visible                           ${MAP_ORIGIN_ACCOUNT_LIST}                                            10
    Click Element                                           ${MAP_ORIGIN_ACCOUNT_LIST}

    Wait until element is visible                           ${MAP_FIRST_ORIGIN_ACCOUNT}                                           10
    Click Element                                           ${MAP_FIRST_ORIGIN_ACCOUNT}

    Wait until element is visible                           ${MAP_BENEFICIARY_LIST}                                               10
    Click Element                                           ${MAP_BENEFICIARY_LIST}
    Select From List By Index                               ${MAP_BENEFICIARY_LIST}                                               1

    Wait until element is visible                           ${MAP_TOTAL_AMOUNT}                                                  10
    Input Text                                              ${MAP_TOTAL_AMOUNT}             ${DATA_TOTAL_AMOUNT}

    Wait until element is visible                           ${MAP_TAX_ID}                                                         10
    Press Keys                                              ${MAP_TAX_ID}                    ${DATA_TAX_ID}


I fill out the service payment form with the right values
    Set Selenium Speed    1

    Wait until element is visible                           ${MAP_SCREEN_NAME}                                           10
    ${VAR_SCREEN_NAME}                Get Text              ${MAP_SCREEN_NAME}
    ${VAR_SCREEN_NAME}                Convert To Uppercase  ${VAR_SCREEN_NAME}
    Should Be Equal As Strings                              ${VAR_SCREEN_NAME}               ${DATA_SERVICES_NAME}

    Set Selenium Speed    0

    Wait until element is visible                           ${MAP_ORIGIN_ACCOUNT_LIST}                                            10
    Click Element                                           ${MAP_ORIGIN_ACCOUNT_LIST}

    Wait until element is visible                           ${MAP_FIRST_ORIGIN_ACCOUNT}                                           10
    Click Element                                           ${MAP_FIRST_ORIGIN_ACCOUNT}

    Wait until element is visible                           ${MAP_TOTAL_AMOUNT}                                                  10
    Input Text                                              ${MAP_TOTAL_AMOUNT}             ${DATA_TOTAL_AMOUNT}

    Wait until element is visible                           ${MAP_ENTITY_ID}                                                      10
    Press Keys                                              ${MAP_ENTITY_ID}                 ${DATA_ENTITY_ID}

    Wait until element is visible                           ${MAP_REFERENCE_ID}                                                   10
    Press Keys                                              ${MAP_REFERENCE_ID}              ${DATA_REFERENCE_ID}


I confirm the social security payment form
    Wait until element is visible                           ${MAP_CONFIRMATION_BUTTON}                                            10
    Click Element                                           ${MAP_CONFIRMATION_BUTTON}

    Verify if all the values on the review form are the same informed on the main form


I confirm service payment form
    Wait until element is visible                           ${MAP_CONFIRMATION_BUTTON}                                            10
    Click Element                                           ${MAP_CONFIRMATION_BUTTON}


I submit the transfer on the review payment screen
    No Operation
