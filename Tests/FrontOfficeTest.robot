*** Settings ***
Resource            ../Resources/FrontOfficeApp.robot
Resource            ../Resources/Common.robot
Test Setup          Common.Open Web Browser
Test Teardown       Common.Close Web Browser

*** Test Cases ***
TeamPage
    FrontOfficeApp.NavigateToTeamPage
ContactPage
    FrontOfficeApp.NavigateToContactPage
    FrontOfficeApp.SendMessage
