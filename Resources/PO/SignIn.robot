*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Authentication
    Wait Until Element Is Visible  css=input[class='is_required validate account_input form-control']

Authenticate User
    Input Text  id=email  ${EMAIL_ADDRESS}
    Input Text  id=passwd  ${PASSWORD}
    Click Button   css=button[id='SubmitLogin']