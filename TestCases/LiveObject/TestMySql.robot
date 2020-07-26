*** Settings ***
Documentation  Mysql test
Library  SeleniumLibrary
Variables  ../../Libraries/Locators.py
Resource  ../../Resources/TestBase.robot
Resource  ../../Resources/Keywords_MySql.robot

Suite Setup  Launch the App
Suite Teardown  Close the App

*** Test Cases ***
Login to the application
    [documentation]  This test case varifies login page
    [Tags]  Regression

    Login

*** Test Cases ***
Creating Connector
    [documentation]  Test case to create connector
    [Tags]  Regression

    Click Link  ${LnkWrangling_id}
    Click Link  ${LnkConnector_id}
    Click Link  ${BtnAddNew_xpath}
    Input connector name desc and table
    Page Should Contain  ${SourceName}
    Page Should Contain  ${Sourcedesc}
    Input connector details
    Element Should Be Disabled  ${BtnNext_class}
    Click Button  ${BtnTestConnection_xpath}
    Page Should Contain  Connection is working
    Click Button  ${BtnConfirmOk_xpath}
    Click Button  ${BtnNext_class}

*** Test Cases ***
Edit connector
    [documentation]  Test case to edit connector
    [Tags]  Regression

    Wait Until Page Contains Element  ${ImgEdit_xpath}
    ClicK Element  ${ImgEdit_xpath}
    Input Text  ${TxtSourceDesc_NAME}  ${sourceDescEdit}
    Click Button  ${BtnNext_class}
    Click Button  ${BtnTestConnection_xpath}
    Page Should Contain  Connection is working
    Click Button  ${BtnConfirmOk_xpath}
    Click Button  ${BtnNext_class}


