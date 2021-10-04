*** Settings ***


Library        SeleniumLibrary
Library        BuiltIn

Variables      ../element_mapping/AccountsPage_mapping.py



*** Keywords ***

I need to see all the accounts associated to me
    Wait until element is visible               ${MAP_FAVORITES_BAR}                    10
    Wait until element is visible               ${MAP_FAVORITE_ACCOUNT_DESCRIPTION}     10
    ${VAR_ACCOUNT_DESCRIPTION}      Get Text    ${MAP_FAVORITE_ACCOUNT_DESCRIPTION}
    ${VAR_ACCOUNT_IBAN}             Get Text    ${MAP_FAVORITE_ACCOUNT_IBAN}
    ${VAR_ACCOUNT_AMMOUNT}          Get Text    ${MAP_FAVORITE_ACCOUNT_AMMOUNT}
    Set Suite Variable                          ${VAR_ACCOUNT_DESCRIPTION}
    Set Suite Variable                          ${VAR_ACCOUNT_IBAN}
    Set Suite Variable                          ${VAR_ACCOUNT_AMMOUNT}

I need to see the details of these favorite accounts
    Wait until element is visible               ${MAP_PANEL_FAVORITE_ACCOUNT}           10
    Click Element                               ${MAP_PANEL_FAVORITE_ACCOUNT}
