*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  css=div[class='box-info-product']

Add to Cart
    Click Button  css=button[name='Submit']
