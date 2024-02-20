*** Settings ***
Resource    PO/FrontOffice/FrontOffice_Home.robot
Resource    PO/FrontOffice/FrontOffice_Team.robot
Resource    PO/FrontOffice/FrontOffice_Contact.robot


*** Keywords ***
NavigateToHomePage
        FrontOffice_Home.Load
        FrontOffice_Home.Validate
NavigateToTeamPage
        NavigateToHomePage
        FrontOffice_Team.Load
        FrontOffice_Team.Validate
NavigateToContactPage
        NavigateToHomePage
        FrontOffice_Contact.Load
        FrontOffice_Contact.Validate
SendMessage
        NavigateToContactPage
        FrontOffice_Contact.FillDetails
        sleep   3s
        FrontOffice_Contact.Submit
