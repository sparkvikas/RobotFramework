*** Settings ***
Documentation  Mysql tst
Library  SeleniumLibrary
Library  ../../Libraries/Keywords.py
Variables  ../../Libraries/Locators.py


*** Variables ***


*** Test Cases ***
Login to the application
    [documentation]  This test case varifies login page
    [Tags]  Regression

    Open Browser  ${url}  ${browser}  options=add_argument('--ignore-certificate-errors')
    Maximize Browser Window
    Set Selenium Implicit Wait  30

    Wait Until Page Contains Element  ${TxtUsernameID}
    Input Text  ${TxtUsernameID}  ${username}
    Input Text  ${TxtPasswordID}  ${password}
    Click Button  ${BtnSignInID}

*** Test Cases ***
Creating Connector
    [documentation]  Test case to create connector
    [Tags]  Regression

    Click Link  ${LnkWrangling_id}
    Click Link  ${LnkConnector_id}
    Click Link  ${BtnAddNew_xpath}

    Input Text  ${TxtSourcename_NAME}  ${SourceName}
    Input Text  ${TxtSourceDesc_NAME}  ${Sourcedesc}
    Click Element  ${DropDown_xpath}
    Click Element  ${ConnectorType_xpath}
    Click Element  ${DataType_xpath}
    Click Button  ${BtnNext_class}

    Page Should Contain  ${SourceName}
    Page Should Contain  ${Sourcedesc}

    Input Text  ${TxtHost_name}  ${hostip}
    Input Text  ${TxtPort_name}  ${port}
    Input Text  ${TxtUserId_name}  ${user_id}
    Input Text  ${TxtPassword_name}  ${password_Connector}
    Input Text  ${TxtDatabase_name}  ${database_name}

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











