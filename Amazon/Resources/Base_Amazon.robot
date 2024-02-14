*** Settings ***
Library          SeleniumLibrary


*** Keywords ***
Open Web Browser
    #    OPEN BROWSER          https://www.amazon.in     chrome
    open browser          about:blank     ${BROWSER}

Close Web Browser
    close all browsers

