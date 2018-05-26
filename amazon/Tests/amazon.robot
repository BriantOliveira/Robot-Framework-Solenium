*** Settings ***
Documentation  This is some basic test case
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is a simple test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  Chrome
    Wait Until Page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox  Rastar Ferrari 458 Italia Diecast Car
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Rastar Ferrari 458 Italia Diecast Car"
    Click Link  css=#result_0 a.s-access-detail-page
    Wait Until Page Contains  Back to search results
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart
    Click Link  id=hlb-ptc-btn-native
    Close Browser

*** Keywords ***

