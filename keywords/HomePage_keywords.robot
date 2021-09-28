*** Settings ***


Library        SeleniumLibrary
Library        BuiltIn
Library        String


Variables      ../element_mapping/HomePage_Mapping.py
Variables      ../data/HomePage_data.py


*** Keywords ***
I need to be taken to my homepage
    Wait until element is visible                       ${TXT_CLIENT_NAME}  30
    ${SCR_NAME}                   Get Text              ${TXT_CLIENT_NAME}
    ${SCR_NAME}                   Convert To Uppercase  ${SCR_NAME}
    Should Be Equal As Strings    ${SCR_NAME}           ${CLIENT_FULLNAME}

I need to receive an error message and not be allowed to proceed
    Wait until element is visible                       ${TXT_INVALID_CREDENTIAL_MESSAGE}  30
