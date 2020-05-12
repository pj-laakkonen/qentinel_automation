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

Check for text on the Finnish home page
    Open Sign In
    Create Account


