*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Search
    Search Text
    Submit Search
Search Text
    input text      id=twotabsearchtextbox    iphone 12
Submit Search
    click button    id=nav-search-submit-button