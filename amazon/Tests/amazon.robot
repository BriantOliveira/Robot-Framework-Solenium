*** Settings ***
Documentation  This is some basic test case
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is a simple test
    [Tags]  Smoke
    Open Browser http://www.amazon.com chrome
    Wait Until Page Contains Your Amazon.com
    Input Text id=twotabsearchtextbox Ferrari 458
    Click Button xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Click Link css=#result_O a.s-access-detail-page
    Wait Until Page Contains Back to search results
    Click Button id = add-to-cart-button
    Wait Until Page Contains 1 item added to Cart
    Close Browser

*** Keywords ***

