*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Verify
    @{windowhandler} =   get window handles
    switch window    ${windowhandler}[1]
#    wait until page contains    Brand: Generic
#    sleep   5s
    wait until page contains    Visit the Apple Store
#    sleep   5s
#    sleep    20s
Add
#    click element    xpath=//span[@id='submit.add-to-cart-announce']
    click element    xpath=//a[@name="submit.add-to-registry.wishlist.unrecognized"]
#    click element    xpath=//input[@id="add-to-cart-button" and @name="submit.add-to-cart"]
#    sleep   5s

