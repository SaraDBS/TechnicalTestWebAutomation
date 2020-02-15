*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Confirm Order
    Wait Until Page Contains  Check payment
    Click Element  xpath=//*[contains(text(), "I confirm my order")]

Verify Order Confirmation Page
    Wait Until Page Contains  Your order on My Store is complete.
