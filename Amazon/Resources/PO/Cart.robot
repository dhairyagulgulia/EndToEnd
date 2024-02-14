*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Verify
    wait until page contains    Added to Cart
Proceed To Buy
    click button    value="Proceed to checkout"