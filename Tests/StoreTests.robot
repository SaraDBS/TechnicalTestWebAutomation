*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Common.robot  # for Setup & Teardown
Resource  ../Resources/Store.robot  # for lower level keywords in test cases
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://automationpractice.com
${SEARCH_TERM} =  Blouse
${EMAIL_ADDRESS} =  sara@email.com
${PASSWORD} =  password
*** Test Cases ***
Logged out user can search for products
    [Tags]  Current
    Store.Search for Products

Logged out user can view a product
    Store.Search for Products
    Store.Select Product from Search Results

Logged out user can add product to cart
    Store.Search for Products
    Store.Select Product from Search Results
    Store.Add Product to Cart

Logged out user must sign in to check out
    Store.Search for Products
    Store.Select Product from Search Results
    Store.Add Product to Cart
    Store.Begin Checkout

Logged in user can complete check out
    Store.Search for Products
    Store.Select Product from Search Results
    Store.Add Product to Cart
    Store.Begin Checkout
    Store.Complete Checkout
    Store.Order Confirmation