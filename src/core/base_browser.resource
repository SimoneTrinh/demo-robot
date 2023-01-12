*** Settings ***
Library     SeleniumLibrary    run_on_failure=None
Library     OperatingSystem
Library     Dialogs
Resource    ${EXECDIR}/src/config/browser.config.resource
Library     ${EXECDIR}/src/lib/date_time.py


*** Keywords ***
Setup Browser
    Open Browser    browser=${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    ${conf_ImplicitWait}
    Set Selenium Timeout    ${conf_SeleniumTimeout}
    Set Screenshot Directory    ${conf_ScreenshotDir}

Setup Tear Down
    ${thisTime}    Generate Time String
    Run Keyword If Test Failed    Capture Page Screenshot    filename=[failed]-[${thisTime}]-TC-${TEST NAME}.png
    Run Keyword If Test Passed    Capture Page Screenshot    filename=[passed]-[${thisTime}]-TC-${TEST NAME}.png
    Close All Browsers

Tear Down
    [Teardown]    Setup Tear Down

