*** Settings ***
Documentation  Mysql test
Library  SeleniumLibrary
Resource  ../../Resources/TestBase.robot
Library  ../../Libraries/Keywords.py
Variables  ../../Libraries/Locators.py


Suite Setup  Launch the app
Suite Teardown  Close the browser

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












