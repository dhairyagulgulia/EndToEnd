*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Load
    go to    ${BACKOFFICE_URL}
Validate
    page should contain    ${BACKOFFICE_HOMEPAGE_HEADER}