*** Settings ***
Documentation  This is some basic test case
Library  SeleniumLibrary
Library  OperatingSystem
Suite Setup  Setup chromedriver
*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is a simple test
    [Tags]  Smoke
    Open Browser http://www.amazon.com chrome
    Close Browser

*** Keywords ***
Setup chromedriver
  Set Environment Variable  webdriver.chrome.driver  ${EXECDIR}/chromedriver.exe  