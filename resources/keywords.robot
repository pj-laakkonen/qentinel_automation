*** Settings ***
Documentation       Reusable keywords and variables
Library             QWeb
Library             String


*** Variables ***
${BROWSER}    gc


*** Keywords ***
Appstate
    [Documentation] 	Checks which actions should be taken prior to testing and does them
    [Arguments]    		${state}
    Run Keyword If     '${state}' == 'home'
    ...     			Home

Home
	GoTo                ${HOME}
	VerifyText          Automation Practice Website

Open Sign In
	VerifyText              ${SIGNIN}
	ClickText               ${SIGNIN}

Create Account
	TypeText                Email address   pekka.pekkanen@gmail.com
	Sleep                   1
	ClickText               Create an account
    Sleep                   1
    ClickText               Mr.
    TypeText                First name      Pekka
    TypeText                Last name       Pekkanen
    TypeSecret              Password        pwd666
    DropDown                days            18
    DropDown                months          3
    DropDown                years           1977
    TypeText                Company         Yritys Oy
    TypeText                Address         Kivikatu 8
    TypeText                City            New York City
    DropDown                State           New York
    TypeText                Zip/Postal Code     12345
    TypeText                Mobile phone        0401234567

Start Suite
    # Handle suite setup here
    # Open applications etc. here
    [Documentation]        Starts Browser
    Open Browser           about:blank                 ${BROWSER}

End Suite
    Close All Browsers
    # Handle suite teardown actions here
    # Write steps to close apps etc. here

