*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HomePage_Header} =     RobotFrameworkTutorial.com Test Client

*** Keywords ***
Open Web Brower
    [Arguments]     ${browser}
    open browser    about:blank     ${browser}

Close Web Brower
    close all browsers

Begin Test
    [Arguments]         ${url}
    Load_HomePage       ${url}
    Validate_HomePage
    RETURN  "This is Successful!"

Load_HomePage
    [Arguments]    ${url}
    GO TO          ${url}

Validate_HomePage
    wait until page contains    ${HomePage_Header}




