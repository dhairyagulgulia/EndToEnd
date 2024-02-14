*** Settings ***
Resource        ../Resources/OfficeKeywords.robot
Resource        ../Resources/OfficeBase.robot
Test Setup      OfficeBase.Open Web Brower     ${BROWSER}
Test Teardown   OfficeBase.Close Web Brower
Library         RequestsLibrary
Library         Dialogs


*** Variables ***
${BROWSER} =    Chrome
${URL} =        https://automationplayground.com/front-office

*** Test Cases ***
Teams
    OfficeBase.Begin Test            ${URL}
    ${BROWSER}  get selection from user    Which Browser?   Chrome  Edge
    set global variable    ${BROWSER}
    OfficeKeywords.Team Meambers
    execute manual step    Check Point  Fail!!
    pause execution    Execution paused. Press OK to continue.

T2
    OfficeBase.Begin Test            ${URL}
    OfficeKeywords.Team Meambers

T3
    Create Session    git_session   https://api.github.com
    ${Response} =   GET On Session    git_session  users/robotframeworktutorial
    log    ${Response.json()}
    log    ${Response.headers}
