*** Settings ***
Documentation           Reusable keywords and variables
Library                 QWeb
Library                 String


*** Variables ***
${BROWSER}              chrome
${HOME}                 http://automationpractice.com
${SIGNIN}               Sign in
${EMAIL}                pekka.pekkanen3@gmail.com
${PASSWORD}             secret007
${F_NAME}               Pekka
${L_NAME}               Pekkanen
${GENDER}               Mr.

*** Keywords ***
Appstate
    [Documentation] 	Initial actions
    [Arguments]    		${state}
    Run Keyword If     '${state}' == 'home'
    ...     			Home

Home
	GoTo                    ${HOME}
	VerifyText              Automation Practice Website

Open Sign In
	VerifyText              ${SIGNIN}
	ClickText               ${SIGNIN}

Create Account
    VerifyText              Create an account
	TypeText                Email address   ${EMAIL}
	ClickText               Create an account
	VerifyText              Your personal information   15s
    ClickText               ${GENDER}
    TypeSecret              First name      ${F_NAME}
    TypeSecret              Last name       ${L_NAME}
    TypeSecret              Password        ${PASSWORD}
    DropDown                days            19
    DropDown                months          9
    DropDown                years           1999
    ClickCheckbox           Sign up for our newsletter      on
    ClickText               Receive special offers from our partners!
    TypeText                Company         Yritys Oy
    TypeText                Address         Kivikatu 8
    TypeText                City            New York City
    DropDown                State           New York
    TypeText                Zip/Postal Code     12345
    TypeText                Mobile phone        0401234567
    ClickText               Register
    GoTo                    ${HOME}

Add Tshirt To Cart
    ClickText               T-SHIRTS
    ClickCheckbox           Cotton   on
    ClickCheckbox           L   on
    ClickText               Faded Short Sleeve T-shirts
    TypeText                Quantity        3
    ClickText               Add to cart
    ClickText               Continue shopping

Start Suite
    [Documentation]         Starts Browser
    OpenBrowser             about:blank     ${BROWSER}

End Suite
    CloseAllBrowsers


