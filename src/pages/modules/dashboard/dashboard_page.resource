*** Settings ***
Resource    ${EXECDIR}/src/pages/base_page.resource


*** Variables ***
${BTN_HOME}         //button[@aria-label='Go to Home view']
${LOADING_STATE}    //div[@class='loading_screen--loader']//*[local-name() = 'svg'][2]


*** Keywords ***
Verify Redirect To Dashboard Page
    Wait Until Element Is Not Visible    ${LOADING_STATE}
    Wait Until Element Is Enabled    ${BTN_HOME}

