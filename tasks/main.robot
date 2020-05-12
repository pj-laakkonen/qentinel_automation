*** Settings ***
Documentation       Tests for Pace Starter.
Resource            ../resources/keywords.robot
Resource            ../resources/locators.robot
Suite Setup         Start Suite
Suite Teardown      End Suite

*** Variables ***

# run tests locally with:
# robot -d output -L DEBUG -b debug.txt tasks/main.robot


*** Test Cases ***
Test the global home page
    [Documentation]     Verifies home page text
    [Tags]              Home
    Appstate            home

Create an account
    Open Sign In
    Create Account

Add products to cart
    Add Tshirt To Cart
