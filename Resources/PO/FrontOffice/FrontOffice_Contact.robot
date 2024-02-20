*** Settings ***
Library     SeleniumLibrary
Library     ../../ExternalLibrary/ExternalLib.py

*** Keywords ***
Load
    click element    ${FrontOFFICE_CONTACT_XPath}
Validate
    page should contain    ${FrontOFFICE_CONTACT_HEADER}
FillDetails
    &{userdata} =   userdata extraction     ${USER_DATAFILE_PATH}
    input text      id=name                 ${userdata['name']}
    input text      id=email                ${userdata.email}
    input text      id=phone                ${userdata.phone}
    input text      id=message              ${userdata.message}
Submit
    click button    Send Message
