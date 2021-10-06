*** Settings ***


Library         SeleniumLibrary
Library         BuiltIn

Variables       ../element_mapping/PaymentsPage_mapping.py

Variables       ../data/PaymentsPage_data.py



*** Keywords ***

Verify if all the values on the review form are the same informed on the main form

    Wait until element is visible                           ${MAP_CONFIRM_IBAN}                         10
    ${VAR_CONFIRM_IBAN}                         Get Text    ${MAP_CONFIRM_IBAN}

    Wait until element is visible                           ${MAP_CONFIRM_BENEFICIARY}                  10
    ${MAP_CONFIRM_BENEFICIARY}                  Get Text    ${MAP_CONFIRM_BENEFICIARY}

    Wait until element is visible                           ${MAP_CONFIRM_INTEGER_AMOUNT}               10
    ${MAP_CONFIRM_INTEGER_AMOUNT}               Get Text    ${MAP_CONFIRM_INTEGER_AMOUNT}

    Wait until element is visible                           ${MAP_CONFIRM_DECIMAL_AMOUNT}               10
    ${MAP_CONFIRM_DECIMAL_AMOUNT}               Get Text    ${MAP_CONFIRM_DECIMAL_AMOUNT}

    Wait until element is visible                           ${MAP_CONFIRM_TAX_ID}                       10
    ${MAP_CONFIRM_TAX_ID}                       Get Text    ${MAP_CONFIRM_TAX_ID}

    Wait until element is visible                           ${MAP_CONFIRM_PAYMENT_PERIOD}               10
    ${MAP_CONFIRM_PAYMENT_PERIOD}               Get Text    ${MAP_CONFIRM_PAYMENT_PERIOD}

    Wait until element is visible                           ${MAP_CONFIRM_RECURRENCE}                   10
    ${MAP_CONFIRM_RECURRENCE}                   Get Text    ${MAP_CONFIRM_RECURRENCE}

    Wait until element is visible                           ${MAP_CONFIRM_TRANSACTION_COSTS_INTEGER}    10
    ${MAP_CONFIRM_TRANSACTION_COSTS_INTEGER}    Get Text    ${MAP_CONFIRM_TRANSACTION_COSTS_INTEGER}

    Wait until element is visible                           ${MAP_CONFIRM_TRANSACTION_COSTS_DECIMAL}    10
    ${MAP_CONFIRM_TRANSACTION_COSTS_DECIMAL}    Get Text    ${MAP_CONFIRM_TRANSACTION_COSTS_DECIMAL}
