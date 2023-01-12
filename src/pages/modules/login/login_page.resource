*** Settings ***
Resource    ${EXECDIR}/src/pages/base_page.resource


*** Variables ***
${TXB_EMAIL}            //input[@type='email']
${TXB_PASSWORD}         //input[@type='password']
${BTN_EMAIL_LOGIN}      //button[@data-gtm-id='start-email-login']


*** Keywords ***
Verify Redirect To Login Page
    Wait Until Element Is Enabled    ${TXB_EMAIL}
    Wait Until Element Is Enabled    ${TXB_PASSWORD}

Enter User Credential
    [Arguments]    ${userEmail}    ${userPass}
    Enter User Email    ${userEmail}
    Enter User Password    ${userPass}

Enter User Email
    [Arguments]    ${userEmail}
    Input Text    ${TXB_EMAIL}    ${userEmail}

Enter User Password
    [Arguments]    ${userPass}
    Input Text    ${TXB_PASSWORD}    ${userPass}

Click Button Email Login
    Click Element    ${BTN_EMAIL_LOGIN}

