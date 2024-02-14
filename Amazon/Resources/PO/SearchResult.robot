*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Verify
    wait until page contains    results for
    wait until page contains    "iphone 12"
Select Product
#     click element    xpath=//a[@class="a-link-normal s-underline-text s-underline-link-text s-link-style a-text-normal"][1]
#     sleep  5s
     click element    xpath=//a[@class="a-link-normal s-underline-text s-underline-link-text s-link-style a-text-normal"][1]