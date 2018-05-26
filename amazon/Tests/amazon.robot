*** Settings ***
Documentation  This is some basic test case
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is a simple test
    [Tags]  Smoke
    Open Browser http://www.amazon.com chrome
    Close Browser

*** Keywords ***

