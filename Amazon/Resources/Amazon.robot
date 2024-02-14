*** Settings ***
Library          SeleniumLibrary
Resource         PO/HomePage.robot
Resource         PO/Navigation.robot
Resource         PO/SearchResult.robot
Resource         PO/Product.robot
Resource         PO/Cart.robot

*** Keywords ***

Search Product
    HomePage.Load
    HomePage.Validate
    Navigation.Search
    SearchResult.Verify

Select the Product
    SearchResult.Select Product
    sleep   3s
    Product.Verify

Add to Cart
    Product.Add
#    Cart.Verify
CheckOut
    Cart.Proceed To Buy



