*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Launch browser
    open browser  https://ebay.com  chrome
    Maximize Browser Window

close the browser
    close browser