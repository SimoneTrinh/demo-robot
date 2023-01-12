*** Settings ***
Resource    ${EXECDIR}/env/env.config.resource
Library     SeleniumLibrary


*** Keywords ***
Run Keyword Until Success
    [Documentation]
    ...    Force run keyword with retries
    ...
    ...    Param `${KW}` is keyword need to run
    ...
    ...    Param `@{KWARGS}` is keyword args to pass into
    [Arguments]    ${KW}    @{KWARGS}
    Wait Until Keyword Succeeds    5x    0.1s    ${KW}    @{KWARGS}

Go To URL
    [Documentation]
    ...    Pass param `${env}` this by pass env to cmdline, ex: '-v env:stag'
    [Arguments]    ${path}
    Go To    https://${url.${env}}${path}

Click Element By Label Name
    [Documentation]
    ...    Click Label/Button/Element by text
    [Arguments]    ${htmlTag}    ${labelName}
    ${xpath}=    Set Variable    //${htmlTag} [normalize-space()='${labelName}']
    Click Element    ${xpath}
