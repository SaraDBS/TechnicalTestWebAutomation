*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Delivery Address Page Loaded
    Wait Until Page Contains  Choose a delivery address:

Proceed to Shipping
    Wait Until Element Is Visible  css=button[name='processAddress']
    Click Button  css=button[name='processAddress']

Proceed to Payment
    Wait Until Page Contains  Shipping
    Select Checkbox  css=input[id='cgv']
    Click Button  css=button[name='processCarrier']

Choose payment method
    Wait Until Page Contains  Your payment method
    Click Link  xpath=//a[@href="http://automationpractice.com/index.php?fc=module&module=cheque&controller=payment"]


