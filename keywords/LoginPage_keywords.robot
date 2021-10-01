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
    Wait until element is visible   ${LAB_WELCOME_MESSAGE}
    Wait until element is visible   ${TXT_USERNAME}
    Wait until element is visible   ${TXT_PASSWORD}
    Wait until element is visible   ${BTN_LOGIN}
    ${TMP_WELCOME}  Get Text        ${LAB_WELCOME_MESSAGE}
    Should Be Equal As Strings      ${TMP_WELCOME}            ${TXT_WELCOME_PT_MESSAGE}

I inform my credentials
    [Arguments]     ${username}       ${password}

    Input Text      ${TXT_USERNAME}   ${username}
    Input Text      ${TXT_PASSWORD}   ${password}
    Click Element   ${BTN_LOGIN}

I need to receive an error message not allowing me to proceed
        Wait until element is visible         ${TXT_INVALID_CREDENTIAL_MESSAGE}     10

I must be taken to my homepage
    Wait until element is visible                       ${TXT_CLIENT_NAME}      10
    ${SCR_NAME}                   Get Text              ${TXT_CLIENT_NAME}
    ${SCR_NAME}                   Convert To Uppercase  ${SCR_NAME}
    Should Be Equal As Strings                          ${SCR_NAME}   ${CLIENT_FULLNAME}
