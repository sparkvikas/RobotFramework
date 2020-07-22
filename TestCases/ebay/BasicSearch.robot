*** Settings ***
Documentation  Basic search functionality
Resource  ../../Resources/TestBase.robot
Resource  ../../Resources/ebay_UserDefinedKeywords.robot

*** Variables ***
${url}  https://ebay.com
${browser}  chrome
${DELAY}  0

*** Test Cases ***
Verify basic search functionality of ebay
    [documentation]  This test case varifies basic search
    [Tags]  Functional

    open browser  ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

    Input Text  xpath://*[@id="gh-ac"]  mobile
    Press keys  xpath://*[@id="gh-btn"]  [Return]
    Page Should Contain  results for mobile

    close browser






