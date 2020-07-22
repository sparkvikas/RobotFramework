*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify search
    Input Text  xpath://*[@id="gh-ac"]  mobile
    Press keys  xpath://*[@id="gh-btn"]  [Return]
    Page Should Contain  results for mobile
