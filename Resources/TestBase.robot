*** Settings ***
Library  SeleniumLibrary
Variables  ../../Libraries/Locators.py


*** Keywords ***
Launch the App
    Open Browser  ${url}  ${browser}  options=add_argument('--ignore-certificate-errors')
    Maximize Browser Window
    Set Selenium Implicit Wait  30

Close the App
    close browser

Login
    Wait Until Page Contains Element  ${TxtUsernameID}
    Input Text  ${TxtUsernameID}  ${username}
    Input Text  ${TxtPasswordID}  ${password}
    Click Button  ${BtnSignInID}




Create Scenario
    Click Link  ${BtnAddNew_xpath}
    Input Text  ${}  ${ScenarioName}
    Input Text  ${}  ${ScenarioDesc}
    Click Button  ${BtnNext_class}




