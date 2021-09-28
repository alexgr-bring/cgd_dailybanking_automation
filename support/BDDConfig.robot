*** Settings ***
Documentation  Support library to use basic techniques of Behavior Driven Development (BDD)


*** Keywords ***
Given  ${keyword}
    Run Keyword    ${keyword}

When  ${keyword}
    Run Keyword    ${keyword}

Then  ${keyword}
    Run Keyword    ${keyword}

And  ${keyword}
    Run Keyword    ${keyword}
