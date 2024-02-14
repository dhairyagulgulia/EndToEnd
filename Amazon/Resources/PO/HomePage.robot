*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Load
    go to   ${URL}
Validate
    wait until element is visible    xpath=//a[@id="nav-logo-sprites"]
    ${value} =  get element attribute    id=nav-logo-sprites    aria-label
#    should be equal as strings    ${value}      Amazon
    should be equal as strings    ${value}      Amazon.in