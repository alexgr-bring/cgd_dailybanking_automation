*** Settings ***


Library        SeleniumLibrary
Library        BuiltIn

Resource      ../keywords/TransfersPage_keywords.robot

Variables      ../element_mapping/TransfersPage_mapping.py

Variables      ../data/TransfersPage_data.py



*** Keywords ***

I fill out the International Account Transfer form with the right values
    Set Selenium Speed    1

    Wait until element is visible   ${MAP_SCREEN_NAME}  10
    ${VAR_SCREEN_NAME}  Get Text  ${MAP_SCREEN_NAME}
    ${VAR_SCREEN_NAME}  Convert To Uppercase  ${VAR_SCREEN_NAME}
    Should Be Equal As Strings  ${VAR_SCREEN_NAME}  ${DATA_INTER_ACC_TRANSF_NAME}

    Set Selenium Speed  0

    Wait until element is visible   ${MAP_INTER_ACC_TRANSF_MAIN_ORIGIN_ACCOUNT_LIST}   10
    Click Element   ${MAP_INTER_ACC_TRANSF_MAIN_ORIGIN_ACCOUNT_LIST}

    Wait until element is visible   ${MAP_INTER_ACC_TRANSF_MAIN_FIRST_ORIGIN_ACCOUNT}  10
    Click Element   ${MAP_INTER_ACC_TRANSF_MAIN_FIRST_ORIGIN_ACCOUNT}

    ${VAR_INTER_ACC_TRANSF_MAIN_ORIGIN_ACCOUNT_SELECTED}   Get Text  ${MAP_INTER_ACC_TRANSF_MAIN_ORIGIN_ACCOUNT_SELECTED}
    Set Suite Variable    ${VAR_INTER_ACC_TRANSF_MAIN_ORIGIN_ACCOUNT_SELECTED}

    Wait until element is visible   ${MAP_INTER_ACC_TRANSF_MAIN_DESTINATION_ACCOUNT_LIST}  10
    Click Element   ${MAP_INTER_ACC_TRANSF_MAIN_DESTINATION_ACCOUNT_LIST}

    Wait until element is visible   ${MAP_INTER_ACC_TRANSF_MAIN_DESTINATION_ACCOUNT_SELECTED}  10
    Click Element   ${MAP_INTER_ACC_TRANSF_MAIN_DESTINATION_ACCOUNT_SELECTED}

    Wait until element is visible   ${MAP_INTER_ACC_TRANSF_MAIN_IBAN}  10
    ${VAR_INTER_ACC_TRANSF_MAIN_IBAN}   Get Value  ${MAP_INTER_ACC_TRANSF_MAIN_IBAN}

    Wait until element is visible   ${MAP_INTER_ACC_TRANSF_MAIN_ALERT_MSG}  10

    Wait until element is visible   ${MAP_INTER_ACC_TRANSF_MAIN_INTEGER_AMOUNT}  10
    Input Text  ${MAP_INTER_ACC_TRANSF_MAIN_INTEGER_AMOUNT}  ${DATA_INTER_ACC_TRANSF_MAIN_INTEGER_AMOUNT}

    Wait until element is visible   ${MAP_INTER_ACC_TRANSF_MAIN_DECIMAL_AMOUNT}  10
    Input Text  ${MAP_INTER_ACC_TRANSF_MAIN_DECIMAL_AMOUNT}  ${DATA_INTER_ACC_TRANSF_MAIN_DECIMAL_AMOUNT}

    Wait until element is visible   ${MAP_INTER_ACC_TRANSF_MAIN_DESCRIPTION}  10
    Input Text  ${MAP_INTER_ACC_TRANSF_MAIN_DESCRIPTION}  ${DATA_INTER_ACC_TRANSF_MAIN_DESCRIPTION}

    Wait until element is visible   ${MAP_INTER_ACC_TRANSF_MAIN_NORMAL_TRANSF_TYPE}  10
    Click Element   ${MAP_INTER_ACC_TRANSF_MAIN_NORMAL_TRANSF_TYPE}

    Wait until element is visible   ${MAP_INTER_ACC_TRANSF_MAIN_CALENDAR}  10
    Click Element   ${MAP_INTER_ACC_TRANSF_MAIN_CALENDAR}

    Wait until element is visible   ${MAP_INTER_ACC_TRANSF_MAIN_SCHEDULED_DATE}  10
    Click Element   ${MAP_INTER_ACC_TRANSF_MAIN_SCHEDULED_DATE}

    Wait until element is visible   ${MAP_INTER_ACC_TRANSF_MAIN_CONFIRMATION_BUTTON}  10
    Click Element   ${MAP_INTER_ACC_TRANSF_MAIN_CONFIRMATION_BUTTON}
