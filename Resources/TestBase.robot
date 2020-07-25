*** Settings ***
Library  SeleniumLibrary
Variables  ../../Libraries/Locators.py


*** Keywords ***
Launch the App
    Open Browser  ${url}  ${browser}  options=add_argument('--ignore-certificate-errors')
    Maximize Browser Window
    Set Selenium Implicit Wait  30

Close the browser
    close browser

Login
    Wait Until Page Contains Element  ${TxtUsernameID}
    Input Text  ${TxtUsernameID}  ${username}
    Input Text  ${TxtPasswordID}  ${password}
    Click Button  ${BtnSignInID}

Input connector name desc and table
    Input Text  ${TxtSourcename_NAME}  ${SourceName}
    Input Text  ${TxtSourceDesc_NAME}  ${Sourcedesc}
    Click Element  ${DropDown_xpath}
    Click Element  ${ConnectorType_xpath}
    Click Element  ${DataType_xpath}
    Click Button  ${BtnNext_class}

Input connector details
    Input Text  ${TxtHost_name}  ${hostip}
    Input Text  ${TxtPort_name}  ${port}
    Input Text  ${TxtUserId_name}  ${user_id}
    Input Text  ${TxtPassword_name}  ${password_Connector}
    Input Text  ${TxtDatabase_name}  ${database_name}




