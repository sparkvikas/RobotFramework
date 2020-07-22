*** Settings ***
Documentation  Scenario Limit test
Library  ../../Libraries/ScenarioLimit.py
Library  SeleniumLibrary

Test Setup  Launch app
Test Teardown  Close app

*** Variables ***
${username}  admin
${password}  123456

*** Test Cases ***
Verify maximum limit of the scenarios
    [documentation]  This test case varifies that scenario has the maximum limit of 5
    [Tags]  Regression

    Login user  ${username}  ${password}
    Sleep  3
    Navigate to scenario
    Verify scenario limit




