*** Settings ***
Resource    PO/BackOffice/BackOffice_Home.robot


*** Keywords ***
NavigateToHomePage
       BackOffice_Home.Load
        BackOffice_Home.Validate