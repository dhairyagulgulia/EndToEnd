*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BACKOFFICE_HOMEPAGE_HEADER} =     RobotFrameworkTutorial.com Demo Admin Site
${BACKOFFICE_URL} =                 https://automationplayground.com/back-office/pages/index.html
${FrontOFFICE_HOMEPAGE_HEADER} =    RobotFrameworkTutorial.com Test Client
${FrontOFFICE_URL} =                https://automationplayground.com/front-office
${BROWSER} =                        chrome
${FrontOFFICE_TEAM_HEADER} =        Our Amazing Team
${FrontOFFICE_TEAM_XPath} =         //*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a
${FrontOFFICE_CONTACT_XPath} =      //*[@id="bs-example-navbar-collapse-1"]/ul/li[6]/a
${FrontOFFICE_CONTACT_HEADER} =     Contact Us


*** Keywords ***
Open Web Browser
    open browser    about:blank     ${BROWSER}
Close Web Browser
    close all browsers