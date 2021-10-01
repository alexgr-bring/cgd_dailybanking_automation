*** Settings ***

Library        SeleniumLibrary
Library        BuiltIn

Resource       ../keywords/LoginPage_keywords.robot

Variables      ../element_mapping/HomePage_mapping.py

Variables      ../data/HomePage_data.py


*** Keywords ***
I need to see all the accounts associated to me
    Wait until element is visible         ${TXT_FAVORITES_BAR}                  10
    Wait until element is visible         ${LAB_FAVORITE_ACCOUNT_DESCRIPTION}   10
    ${ACCOUNT_DESCRIPTION}    Get Text    ${LAB_FAVORITE_ACCOUNT_DESCRIPTION}
    ${ACCOUNT_IBAN}           Get Text    ${LAB_FAVORITE_ACCOUNT_IBAN}
    ${ACCOUNT_AMMOUNT}        Get Text    ${LAB_FAVORITE_ACCOUNT_AMMOUNT}
    Set Suite Variable                    ${ACCOUNT_DESCRIPTION}
    Set Suite Variable                    ${ACCOUNT_IBAN}
    Set Suite Variable                    ${ACCOUNT_AMMOUNT}

I need to see the details of these favorite accounts
    Wait until element is visible         ${PANEL_FAVORITE_ACCOUNT}             10
    Click Element                         ${PANEL_FAVORITE_ACCOUNT}

I am logged on the application
    [Arguments]     ${username}       ${password}
    I am in the login page
    I inform my credentials    ${username}    ${password}
