*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Load
    click element    ${FrontOFFICE_TEAM_XPath}
Validate
    page should contain    ${FrontOFFICE_TEAM_HEADER}