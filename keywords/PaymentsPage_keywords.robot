*** Settings ***


Library         SeleniumLibrary
Library         BuiltIn

Variables       ../element_mapping/PaymentsPage_mapping.py

Variables       ../data/PaymentsPage_data.py



*** Keywords ***

Verify if the values on the Social Security review page are the same as the main page

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

    Wait until element is visible   ${MAP_SS_REVIEW_PAYMENT_PERIOD}   10
    ${VAR_SS_REVIEW_PAYMENT_PERIOD}   Get Text  ${MAP_SS_REVIEW_PAYMENT_PERIOD}

    Wait until element is visible   ${MAP_SS_REVIEW_TRANSACTION_COSTS_INTEGER}  10
    ${VAR_SS_REVIEW_TRANSACTION_COSTS_INTEGER}  Get Text  ${MAP_SS_REVIEW_TRANSACTION_COSTS_INTEGER}

    Wait until element is visible   ${MAP_SS_REVIEW_TRANSACTION_COSTS_DECIMAL}  10
    ${VAR_SS_REVIEW_TRANSACTION_COSTS_DECIMAL}  Get Text  ${MAP_SS_REVIEW_TRANSACTION_COSTS_DECIMAL}


Verify if the values on the Service review page are the same as the main page

    Wait until element is visible   ${MAP_SERV_REVIEW_ORIGIN_ACCOUNT_LIST}   10
    ${VAR_SERV_REVIEW_ORIGIN_ACCOUNT_LIST}   Get Text  ${MAP_SERV_REVIEW_ORIGIN_ACCOUNT_LIST}

    Wait until element is visible   ${MAP_SERV_REVIEW_ENTITY_ID}   10
    ${VAR_SERV_REVIEW_ENTITY_ID}   Get Text  ${MAP_SERV_REVIEW_ENTITY_ID}

    Wait until element is visible   ${MAP_SERV_REVIEW_REFERENCE_ID}   10
    ${VAR_SERV_REVIEW_REFERENCE_ID}   Get Text  ${MAP_SERV_REVIEW_REFERENCE_ID}

    Wait until element is visible   ${MAP_SERV_REVIEW_INTEGER_AMOUNT}   10
    ${VAR_SERV_REVIEW_INTEGER_AMOUNT}   Get Text  ${MAP_SERV_REVIEW_INTEGER_AMOUNT}

    Wait until element is visible   ${MAP_SERV_REVIEW_DECIMAL_AMOUNT}   10
    ${VAR_SERV_REVIEW_DECIMAL_AMOUNT}   Get Text  ${MAP_SERV_REVIEW_DECIMAL_AMOUNT}

    Wait until element is visible   ${MAP_SERV_REVIEW_TRANSACTION_COSTS_INTEGER}   10
    ${VAR_SERV_REVIEW_TRANSACTION_COSTS_INTEGER}   Get Text  ${MAP_SERV_REVIEW_TRANSACTION_COSTS_INTEGER}

    Wait until element is visible   ${MAP_SERV_REVIEW_TRANSACTION_COSTS_DECIMAL}  10
    ${VAR_SERV_REVIEW_TRANSACTION_COSTS_DECIMAL}  Get Text  ${MAP_SERV_REVIEW_TRANSACTION_COSTS_DECIMAL}
