*** Settings ***


Library         SeleniumLibrary
Library         BuiltIn

Variables       ../element_mapping/OTPValidation_mapping.py

Variables       ../data/OTPValidation_data.py



*** Keywords ***

I must be requested to inform the OTP validation code
    Set Selenium Speed    1

    Wait until element is visible   ${MAP_OTP_WINDOW_VALIDATION_CODE}   10
    Input Text    ${MAP_OTP_WINDOW_VALIDATION_CODE}    ${DATA_OTP_WINDOW_VALIDATION_CODE}

    Wait until element is visible   ${MAP_OTP_WINDOW_SUBMIT_CODE}   10
    Click Element    ${MAP_OTP_WINDOW_SUBMIT_CODE}

    Set Selenium Speed    0
