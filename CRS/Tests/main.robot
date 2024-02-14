*** Settings ***
Documentation    This is CRM Suite
Resource         ../Resources/Base_CRS.robot
Resource         ../Resources/CRS.robot
Suite Setup      Base_CRS.Open Web Browser
Suite Teardown   Base_CRS.Close Web Browser

*** Variables ***

*** Test Cases ***
Should be able to add new customer
    [Documentation]       This is CRM Test
    [Tags]                1006    smoke   contact
    log                   Starting the test case!

    CRS.Navigate to Home page
    CRS.Navigate to Login page
    CRS.Login
    CRS.Navigate to Add New Customer Page
    CRS.Add New Customer
    sleep   2s