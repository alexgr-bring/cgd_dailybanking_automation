*** Settings ***


Library        SeleniumLibrary
Library        BuiltIn

Variables      ../element_mapping/PaymentsPage_mapping.py

Variables      ../data/PaymentsPage_data.py



*** Keywords ***

I fill out the social security payment form with the right values
    Set Selenium Speed    1
    Wait until element is visible                           ${MAP_SSECURITY_OPTION_NAME}                                                    10
    ${VAR_OPT_NAME}                   Get Text              ${MAP_SSECURITY_OPTION_NAME}
    ${VAR_OPT_NAME}                   Convert To Uppercase  ${VAR_OPT_NAME}
    Should Be Equal As Strings                              ${VAR_OPT_NAME}                  ${DATA_SOCIAL_SECURITY_NAME}

    Set Selenium Speed    0
    Wait until element is visible                           ${MAP_ORIGIN_ACCOUNT_LIST}                                            10
    Click Element                                           ${MAP_ORIGIN_ACCOUNT_LIST}

    Wait until element is visible                           ${MAP_FIRST_ORIGIN_ACCOUNT}                                           10
    Click Element                                           ${MAP_FIRST_ORIGIN_ACCOUNT}

    Wait until element is visible                           ${MAP_BENEFICIARY_LIST}                                               10
    Click Element                                           ${MAP_BENEFICIARY_LIST}
    Select From List By Index                               ${MAP_BENEFICIARY_LIST}                                               1

    Wait until element is visible                           ${MAP_TOTAL_AMMOUNT}                                                  10
    Input Text                                              ${MAP_TOTAL_AMMOUNT}             ${DATA_TOTAL_AMMOUNT}

    Wait until element is visible                           ${MAP_TAX_ID}                                                         10
    Press Keys                                              ${MAP_TAX_ID}                    ${DATA_TAX_ID}


I submit the social security payment form
    Wait until element is visible                           ${MAP_SUBMIT_BUTTON}                                                  10
    Click Element                                           ${MAP_SUBMIT_BUTTON}


The review payment screen should be successfully presented
    No Operation

I fill out the service payment form with the right values
    Set Selenium Speed    1
    Wait until element is visible                           ${MAP_MENU_OPTION_SERVICES}                                                    10
    ${VAR_OPT_NAME}                   Get Text              ${MAP_MENU_OPTION_SERVICES}
    ${VAR_OPT_NAME}                   Convert To Uppercase  ${VAR_OPT_NAME}
    Should Be Equal As Strings                              ${VAR_OPT_NAME}                  ${DATA_SERVICES_NAME}

    Set Selenium Speed    0
    Wait until element is visible                           ${MAP_ORIGIN_ACCOUNT_LIST}                                            10
    Click Element                                           ${MAP_ORIGIN_ACCOUNT_LIST}

    Wait until element is visible                           ${MAP_FIRST_ORIGIN_ACCOUNT}                                           10
    Click Element                                           ${MAP_FIRST_ORIGIN_ACCOUNT}

    Wait until element is visible                           ${MAP_BENEFICIARY_LIST}                                               10
    Click Element                                           ${MAP_BENEFICIARY_LIST}
    Select From List By Index                               ${MAP_BENEFICIARY_LIST}                                               1

    Wait until element is visible                           ${MAP_TOTAL_AMMOUNT}                                                  10
    Input Text                                              ${MAP_TOTAL_AMMOUNT}             ${DATA_TOTAL_AMMOUNT}

    Wait until element is visible                           ${MAP_TAX_ID}                                                         10
    Press Keys                                              ${MAP_TAX_ID}                    ${DATA_TAX_ID}
