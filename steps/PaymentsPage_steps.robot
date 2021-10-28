*** Settings ***


Library        SeleniumLibrary
Library        BuiltIn

Resource      ../keywords/PaymentsPage_keywords.robot

Variables      ../element_mapping/PaymentsPage_mapping.py

Variables      ../data/PaymentsPage_data.py



*** Keywords ***

I fill out the social security payment form with the right values
    Set Selenium Speed    1

    Wait until element is visible   ${MAP_SCREEN_NAME}  10
    ${VAR_SCREEN_NAME}  Get Text  ${MAP_SCREEN_NAME}
    ${VAR_SCREEN_NAME}  Convert To Uppercase  ${VAR_SCREEN_NAME}
    Should Be Equal As Strings  ${VAR_SCREEN_NAME}  ${DATA_SS_NAME}

    Set Selenium Speed  0

    Wait until element is visible   ${MAP_SS_MAIN_ORIGIN_ACCOUNT_LIST}   10
    Click Element   ${MAP_SS_MAIN_ORIGIN_ACCOUNT_LIST}

    Wait until element is visible   ${MAP_SS_MAIN_FIRST_ORIGIN_ACCOUNT}  10
    Click Element   ${MAP_SS_MAIN_FIRST_ORIGIN_ACCOUNT}
    ${VAR_SS_MAIN_IBAN_SELECTED}   Get Text  ${MAP_SS_MAIN_IBAN_SELECTED}
    Set Suite Variable    ${VAR_SS_MAIN_IBAN_SELECTED}

    Wait until element is visible   ${MAP_SS_MAIN_BENEFICIARY_LIST}  10
    Click Element   ${MAP_SS_MAIN_BENEFICIARY_LIST}
    Select From List by Value   ${MAP_SS_MAIN_BENEFICIARY_LIST}  ${DATA_SS_BENEFICIARY}

    Wait until element is visible   ${MAP_SS_MAIN_INTEGER_AMOUNT}  10
    Input Text  ${MAP_SS_MAIN_INTEGER_AMOUNT}  ${DATA_SS_MAIN_INTEGER_AMOUNT}

    Wait until element is visible   ${MAP_SS_MAIN_DECIMAL_AMOUNT}  10
    Input Text  ${MAP_SS_MAIN_DECIMAL_AMOUNT}  ${DATA_SS_MAIN_DECIMAL_AMOUNT}

    Wait until element is visible   ${MAP_SS_MAIN_TAX_ID}  10
    Press Keys  ${MAP_SS_MAIN_TAX_ID}  ${DATA_SS_MAIN_TAX_ID}


I fill out the service payment form with the right values
    Set Selenium Speed  1

    Wait until element is visible   ${MAP_SCREEN_NAME}  10
    ${VAR_SCREEN_NAME}  Get Text  ${MAP_SCREEN_NAME}
    ${VAR_SCREEN_NAME}  Convert To Uppercase  ${VAR_SCREEN_NAME}
    Should Be Equal As Strings  ${VAR_SCREEN_NAME}  ${DATA_SERV_NAME}

    Set Selenium Speed  0

    Wait until element is visible   ${MAP_SERV_MAIN_ORIGIN_ACCOUNT_LIST}  10
    Click Element   ${MAP_SERV_MAIN_ORIGIN_ACCOUNT_LIST}

    Wait until element is visible   ${MAP_SERV_MAIN_FIRST_ORIGIN_ACCOUNT}   10
    Click Element   ${MAP_SERV_MAIN_FIRST_ORIGIN_ACCOUNT}

    Wait until element is visible   ${MAP_SERV_MAIN_IBAN_SELECTED}   10
    ${VAR_SERV_MAIN_IBAN_SELECTED}   Get Text  ${MAP_SERV_MAIN_IBAN_SELECTED}
    Set Suite Variable  ${VAR_SERV_MAIN_IBAN_SELECTED}

    Wait until element is visible   ${MAP_SERV_MAIN_INTEGER_AMOUNT}   10
    Input Text  ${MAP_SERV_MAIN_INTEGER_AMOUNT}   ${DATA_SERV_INTEGER_AMOUNT}

    Wait until element is visible   ${MAP_SERV_MAIN_DECIMAL_AMOUNT}   10
    Input Text  ${MAP_SERV_MAIN_DECIMAL_AMOUNT}   ${DATA_SERV_DECIMAL_AMOUNT}

    Wait until element is visible   ${MAP_SERV_MAIN_ENTITY_ID}  10
    Press Keys  ${MAP_SERV_MAIN_ENTITY_ID}  ${DATA_SERV_ENTITY_ID}

    Wait until element is visible   ${MAP_SERV_MAIN_REFERENCE_ID}   10
    Press Keys  ${MAP_SERV_MAIN_REFERENCE_ID}   ${DATA_SERV_REFERENCE_ID}
    ${VAR_SERV_MAIN_REFERENCE_ID}   Get Text  ${MAP_SERV_MAIN_REFERENCE_ID}
    Set Suite Variable  ${VAR_SERV_MAIN_REFERENCE_ID}


I confirm the social security payment form
    Wait until element is visible   ${MAP_SS_MAIN_CONFIRMATION_BUTTON}  10
    Click Element   ${MAP_SS_MAIN_CONFIRMATION_BUTTON}

    Verify if the values on the Social Security review page are the same as the SS main page


I confirm service payment form
    Wait until element is visible   ${MAP_SERV_MAIN_CONFIRMATION_BUTTON}  10
    Click Element   ${MAP_SERV_MAIN_CONFIRMATION_BUTTON}

    Verify if the values on the Service review page are the same as the Serv main page


I submit the payment on the review payment screen
    Wait until element is visible   ${MAP_SS_REVIEW_CONFIRMATION_BUTTON}  10
    Click Element   ${MAP_SS_REVIEW_CONFIRMATION_BUTTON}
