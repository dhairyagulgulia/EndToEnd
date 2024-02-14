*** Settings ***
Library          SeleniumLibrary


*** Keywords ***
Open Web Browser
    #    OPEN BROWSER          https://automationplayground.com/crm     chrome
    open browser          about:blank     gc

Close Web Browser
    close browser

