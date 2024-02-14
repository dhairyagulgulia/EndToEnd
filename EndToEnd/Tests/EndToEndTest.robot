*** Settings ***
Resource            ../Resources/FrontOfficeApp.robot
Resource            ../Resources/BackOfficeApp.robot
Resource            ../Resources/Common.robot
Test Setup          Common.Open Web Browser
Test Teardown       Common.Close Web Browser


*** Test Cases ***
EndToEndTest
    FrontOfficeApp.SendMessage
    sleep   3s
    BackOfficeApp.NavigateToHomePage