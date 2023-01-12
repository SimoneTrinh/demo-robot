*** Settings ***
Resource            ${EXECDIR}/src/core/base_browser.resource
Resource            ${EXECDIR}/src/pages/base_page.resource
Resource            ${EXECDIR}/src/pages/modules/home/home_page.resource
Resource            ${EXECDIR}/src/pages/modules/login/login_page.resource
Resource            ${EXECDIR}/src/pages/modules/dashboard/dashboard_page.resource

Task Setup          Setup Browser
Test Teardown       Setup Tear Down


*** Test Cases ***
Open Website And Login Successfully
    Go To Home Page
    Verify Redirect To Home Page
    Click Button Login
    Verify Redirect To Login Page
    Enter User Credential    trinhqa@qa.team    12345A@a
    Click Button Email Login
    Verify Redirect To Dashboard Page

