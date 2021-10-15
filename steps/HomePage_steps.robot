*** Settings ***

Library        SeleniumLibrary
Library        BuiltIn

Resource       ../steps/LoginPage_steps.robot

Variables      ../element_mapping/HomePage_mapping.py

Variables      ../data/HomePage_data.py


*** Keywords ***

I am logged on the application
    [Arguments]   ${arg_username}   ${arg_password}
    I am in the login page
    I inform my credentials   ${arg_username}   ${arg_password}

I choose the Accounts menu option on Account and Cards section
    Wait until element is visible   ${MAP_MENU_OPTION_ACCOUNTS}   10
    Click Element   ${MAP_MENU_OPTION_ACCOUNTS}

I choose the International Account menu option on Transfers section
    Wait until element is visible   ${MAP_MENU_OPTION_INTERNATIONAL_ACCOUNTS}   10
    Click Element   ${MAP_MENU_OPTION_INTERNATIONAL_ACCOUNTS}

I choose the Social Security menu option on Payments section
    Wait until element is visible   ${MAP_MENU_OPTION_SOCIAL_SECURITY}  10
    Click Element   ${MAP_MENU_OPTION_SOCIAL_SECURITY}

I choose the Services menu option on Payments section
    Wait until element is visible   ${MAP_MENU_OPTION_SERVICES}   10
    Click Element   ${MAP_MENU_OPTION_SERVICES}
