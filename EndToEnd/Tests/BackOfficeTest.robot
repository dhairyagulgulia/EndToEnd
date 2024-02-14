*** Settings ***
Resource            ../Resources/BackOfficeApp.robot
Resource            ../Resources/Common.robot
Test Setup          Common.Open Web Browser
Test Teardown       Common.Close Web Browser


*** Test Cases ***
HomePageTest
    BackOfficeApp.NavigateToHomePage