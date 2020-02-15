*** Settings ***
Documentation  Stop top navigation
Library  SeleniumLibrary

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  id=search_query_top  ${SEARCH_TERM}

Submit Search
    Click Button  css=button[class='btn btn-default button-search']