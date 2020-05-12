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
	ClickText               Create an account
    VerifyText              YOUR PERSONAL INFORMATION
    TypeText                First name      Pekka
    TypeText                Last name       Pekkanen

Start Suite
    # Handle suite setup here
    # Open applications etc. here
    [Documentation]        Starts Browser
    Open Browser           about:blank                 ${BROWSER}

End Suite
    Close All Browsers
    # Handle suite teardown actions here
    # Write steps to close apps etc. here

