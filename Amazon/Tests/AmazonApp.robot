*** Settings ***
Documentation    This is Amazon Suite
Resource         ../Resources/Base_Amazon.robot
Resource         ../Resources/Amazon.robot
Suite Setup      Base_Amazon.Open Web Browser
Suite Teardown   Base_Amazon.Close Web Browser

*** Variables ***
${URL} =    https://www.amazon.in
${BROWSER} =    chrome
*** Test Cases ***
Product Add to Card
    [Documentation]       This is Amazon Test
    Amazon.Search Product
    Amazon.Select the Product
    Amazon.Add to Cart
#    Amazon.CheckOut
#    sleep   5s
