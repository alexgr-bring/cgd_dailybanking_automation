*** Settings ***


Library         SeleniumLibrary
Library         BuiltIn

Variables       ../element_mapping/PaymentsPage_mapping.py

Variables       ../data/PaymentsPage_data.py



*** Keywords ***

Verify if the values on the Social Security review page are the same as the SS main page

    Wait until element is visible   ${MAP_SS_REVIEW_IBAN}   10
    ${VAR_SS_REVIEW_IBAN}   Get Text  ${MAP_SS_REVIEW_IBAN}

    Wait until element is visible   ${MAP_SS_REVIEW_BENEFICIARY}  10
    ${VAR_SS_REVIEW_BENEFICIARY}  Get Text  ${MAP_SS_REVIEW_BENEFICIARY}

    Wait until element is visible   ${MAP_SS_REVIEW_INTEGER_AMOUNT}   10
    ${VAR_SS_REVIEW_INTEGER_AMOUNT}   Get Text  ${MAP_SS_REVIEW_INTEGER_AMOUNT}

    Wait until element is visible   ${MAP_SS_REVIEW_DECIMAL_AMOUNT}   10
    ${VAR_SS_REVIEW_DECIMAL_AMOUNT}   Get Text  ${MAP_SS_REVIEW_DECIMAL_AMOUNT}

    Wait until element is visible   ${MAP_SS_REVIEW_TAX_ID}   10
    ${VAR_SS_REVIEW_TAX_ID}   Get Text  ${MAP_SS_REVIEW_TAX_ID}

    Wait until element is visible   ${MAP_SS_REVIEW_TRANSACTION_COSTS_INTEGER}  10
    ${VAR_SS_REVIEW_TRANSACTION_COSTS_INTEGER}  Get Text  ${MAP_SS_REVIEW_TRANSACTION_COSTS_INTEGER}

    Wait until element is visible   ${MAP_SS_REVIEW_TRANSACTION_COSTS_DECIMAL}  10
    ${VAR_SS_REVIEW_TRANSACTION_COSTS_DECIMAL}  Get Text  ${MAP_SS_REVIEW_TRANSACTION_COSTS_DECIMAL}

    ${VAR_SS_REVIEW_IBAN}   Get Text  ${MAP_SS_REVIEW_IBAN}
    Should Be Equal As Strings    ${VAR_SS_MAIN_IBAN_SELECTED}    ${VAR_SS_REVIEW_IBAN}

    ${DATA_SS_BENEFICIARY}  Get Substring   ${DATA_SS_BENEFICIARY}  3
    ${VAR_SS_REVIEW_BENEFICIARY}   Get Text  ${MAP_SS_REVIEW_BENEFICIARY}
    Should Be Equal As Strings    ${DATA_SS_BENEFICIARY}  ${VAR_SS_REVIEW_BENEFICIARY}

    ${VAR_SS_REVIEW_INTEGER_AMOUNT}   Get Text  ${MAP_SS_REVIEW_INTEGER_AMOUNT}
    ${VAR_SS_REVIEW_INTEGER_AMOUNT}   Remove String  ${VAR_SS_REVIEW_INTEGER_AMOUNT}   .
    Should Be Equal As Strings    ${DATA_SS_MAIN_INTEGER_AMOUNT}  ${VAR_SS_REVIEW_INTEGER_AMOUNT}

    ${VAR_SS_REVIEW_DECIMAL_AMOUNT}   Get Text  ${MAP_SS_REVIEW_DECIMAL_AMOUNT}
    Should Be Equal As Strings    ${DATA_SS_MAIN_DECIMAL_AMOUNT}  ${VAR_SS_REVIEW_DECIMAL_AMOUNT}

    ${VAR_SS_REVIEW_TAX_ID}   Get Text  ${MAP_SS_REVIEW_TAX_ID}
    Should Be Equal As Strings    ${DATA_SS_MAIN_TAX_ID}  ${VAR_SS_REVIEW_TAX_ID}

    ${VAR_SS_REVIEW_TRANSACTION_COSTS_INTEGER}  Get Text  ${MAP_SS_REVIEW_TRANSACTION_COSTS_INTEGER}
    Should Be Equal As Strings    ${VAR_SS_REVIEW_TRANSACTION_COSTS_INTEGER}  0

    ${VAR_SS_REVIEW_TRANSACTION_COSTS_DECIMAL}  Get Text  ${MAP_SS_REVIEW_TRANSACTION_COSTS_DECIMAL}
    Should Be Equal As Strings    ${VAR_SS_REVIEW_TRANSACTION_COSTS_DECIMAL}  00


Verify if the values on the Service review page are the same as the Serv main page

    Wait until element is visible   ${MAP_SERV_REVIEW_IBAN}   10
    ${VAR_SERV_REVIEW_IBAN}   Get Text  ${MAP_SERV_REVIEW_IBAN}
    Should Be Equal As Strings    ${VAR_SERV_REVIEW_IBAN}    ${VAR_SERV_MAIN_IBAN_SELECTED}

    Wait until element is visible   ${MAP_SERV_REVIEW_ENTITY_ID}   10
    ${VAR_SERV_REVIEW_ENTITY_ID}   Get Text  ${MAP_SERV_REVIEW_ENTITY_ID}
    Should Be Equal As Strings  ${VAR_SERV_REVIEW_ENTITY_ID}  ${DATA_SERV_ENTITY_ID}

    Wait until element is visible   ${MAP_SERV_REVIEW_REFERENCE_ID}   10
    ${VAR_SERV_REVIEW_REFERENCE_ID}   Get Text  ${MAP_SERV_REVIEW_REFERENCE_ID}
    Should Be Equal As Strings  ${VAR_SERV_REVIEW_REFERENCE_ID}   ${DATA_SERV_REFERENCE_ID}

    Wait until element is visible   ${MAP_SERV_REVIEW_INTEGER_AMOUNT}   10
    ${VAR_SERV_REVIEW_INTEGER_AMOUNT}   Get Text  ${MAP_SERV_REVIEW_INTEGER_AMOUNT}
    ${VAR_SERV_REVIEW_INTEGER_AMOUNT}   Remove String  ${VAR_SERV_REVIEW_INTEGER_AMOUNT}   .
    Should Be Equal As Strings  ${VAR_SERV_REVIEW_INTEGER_AMOUNT}   ${DATA_SERV_INTEGER_AMOUNT}

    Wait until element is visible   ${MAP_SERV_REVIEW_DECIMAL_AMOUNT}   10
    ${VAR_SERV_REVIEW_DECIMAL_AMOUNT}   Get Text  ${MAP_SERV_REVIEW_DECIMAL_AMOUNT}
    Should Be Equal As Strings  ${VAR_SERV_REVIEW_DECIMAL_AMOUNT}   ${DATA_SERV_DECIMAL_AMOUNT}

    Wait until element is visible   ${MAP_SERV_REVIEW_TRANSACTION_COSTS_INTEGER}   10
    ${VAR_SERV_REVIEW_TRANSACTION_COSTS_INTEGER}   Get Text  ${MAP_SERV_REVIEW_TRANSACTION_COSTS_INTEGER}
    Should Be Equal As Strings    ${VAR_SERV_REVIEW_TRANSACTION_COSTS_INTEGER}  0

    Wait until element is visible   ${MAP_SERV_REVIEW_TRANSACTION_COSTS_DECIMAL}  10
    ${VAR_SERV_REVIEW_TRANSACTION_COSTS_DECIMAL}  Get Text  ${MAP_SERV_REVIEW_TRANSACTION_COSTS_DECIMAL}
    Should Be Equal As Strings    ${VAR_SERV_REVIEW_TRANSACTION_COSTS_DECIMAL}  00
