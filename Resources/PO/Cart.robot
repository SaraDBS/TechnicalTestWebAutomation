*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until Element Is Visible  css=div[id='layer_cart']
    Click Element  xpath=//*[contains(text(), "Proceed to checkout")]

Proceed to Checkout
    Wait Until Element Is Visible  xpath=//*[contains(text(), "Your shopping cart")]
    Wait Until Element Is Enabled  xpath=//a[@href="http://automationpractice.com/index.php?controller=order&step=1"]
    Click Link  xpath=//a[@href="http://automationpractice.com/index.php?controller=order&step=1"]