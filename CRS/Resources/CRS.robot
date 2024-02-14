*** Settings ***
Library          SeleniumLibrary

*** Keywords ***
Navigate to Home page
    go to                 https://automationplayground.com/crm
    # Validate Home page
    page should contain   Customers Are Priority One!

Navigate to Login page
    click link            id=SignIn
    # Validate Login page
    page should contain   Login

Login
    input text            id=email-id   admin@robotframeworktutorial.com
    input text            id=password   admin
    click button          id=submit-id
    # Validate Login
    page should contain   Our Happy Customers

Navigate to Add New Customer Page
    click link            id=new-customer
    # Validate New Customer Page
    page should contain   Add Customer

Add New Customer
    input text            id=EmailAddress   dhairya@gmail.com
    input text            id=FirstName      Dhairya
    input text            id=LastName       Jain
    input text            id=City           New Delhi
    select from list by value   id=StateOrRegion    TX
    select radio button   gender    male
    select checkbox       name=promos-name
    click button          Submit
    # Validate Customer Addition
    wait until page contains   Success! New customer added.