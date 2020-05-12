*** Settings ***
Documentation       Testing Qentinel Pace
Resource            ../resources/keywords.robot
Suite Setup         Start Suite
Suite Teardown      End Suite

*** Variables ***

# run tests locally with:
# robot -d results -L DEBUG -b debug.txt --rpa tasks/main.robot

*** Tasks ***
Open the home page
    [Documentation]     Verifies home page text
    [Tags]              Home
    Appstate            home

Create an account
    [Tags]              account
    Open Sign In
    Create Account

Add products to cart
    [Tags]              cart
    Add Tshirt To Cart
