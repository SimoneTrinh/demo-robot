*** Settings ***
Resource    ${EXECDIR}/src/pages/base_page.resource


*** Variables ***
${BTN_LOGIN}    //a[text()='Log in']


*** Keywords ***
Go To Home Page
    [Documentation]    Go to Home Page
    [Arguments]    ${path}=
    Go To URL    ${path}

Verify Redirect To Home Page
    Wait Until Element Is Enabled    ${BTN_LOGIN}

Click Button Login
    Click Element    ${BTN_LOGIN}
