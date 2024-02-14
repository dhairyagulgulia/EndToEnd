*** Settings ***
Resource        PO/Team.robot

*** Keywords ***

Team Meambers
    ${xyz} =    Team.Go To Teams
    log    ${xyz}
    sleep    5s


