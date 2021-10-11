*** Settings ***

Library        SeleniumLibrary
Library        BuiltIn
Library        String

Variables      ../element_mapping/HomePage_mapping.py
Variables      ../element_mapping/LoginPage_mapping.py

Variables      ../data/HomePage_data.py
Variables      ../data/LoginPage_data.py


*** Keywords ***

I am in the login page
    Wait until element is visible   ${MAP_WELCOME_MESSAGE}
    Wait until element is visible   ${MAP_USERNAME}
    Wait until element is visible   ${MAP_PASSWORD}
    Wait until element is visible   ${MAP_LOGIN_BUTTON}
    ${VAR_WELCOME}  Get Text  ${MAP_WELCOME_MESSAGE}
    Should Be Equal As Strings  ${VAR_WELCOME}  ${DATA_WELCOME_MESSAGE}

I inform my credentials
    [Arguments]   ${arg_username}   ${arg_password}

    Input Text  ${MAP_USERNAME}   ${arg_username}
    Input Text  ${MAP_PASSWORD}   ${arg_password}
    Click Element   ${MAP_LOGIN_BUTTON}

I need to receive an error message not allowing me to proceed
    Wait until element is visible   ${MAP_INVALID_CREDENTIAL_MESSAGE}   10

I must be taken to my homepage
    Wait until element is visible   ${MAP_CLIENT_NAME}  10
    ${VAR_CLIENT_NAME}  Get Text  ${MAP_CLIENT_NAME}
    ${VAR_CLIENT_NAME}  Convert To Uppercase  ${VAR_CLIENT_NAME}
    Should Be Equal As Strings  ${VAR_CLIENT_NAME}  ${DATA_CLIENT_NAME}
