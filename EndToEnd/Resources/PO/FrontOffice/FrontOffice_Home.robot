*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Load
    go to    ${FrontOFFICE_URL}
Validate
    page should contain    ${FrontOFFICE_HOMEPAGE_HEADER}