*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${TEAMS_XPATH} =   //*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a
${TEAMS_Header_XPATH} =  //*[@id="team"]/div/div[1]/div/h2
${TEAMS_Header} =   Our Amazing Team

*** Keywords ***
Go To Teams
    Click_Teams_Url
    Validate_Teams_Page
    RETURN    "Sucessfully Landed on Home Page"


Click_Teams_Url
    click link    ${TEAMS_XPATH}

Validate_Teams_Page
    ${element_text} =   get text    ${TEAMS_Header_XPATH}
    should be equal as strings    ${element_text}   ${TEAMS_Header}     ignore_case=True
#    element text should be    ${TEAMS_XPATH}        ${TEAMS_Header}