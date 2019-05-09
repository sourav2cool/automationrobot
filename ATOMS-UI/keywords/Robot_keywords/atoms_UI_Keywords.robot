*** Settings ***
Documentation     This keyword file demonstrates all functionality related to ATOMS Portal

Library           Selenium2Library

Resource           ../../../ATOMS-UI/resources/WebUI/TestData.txt
Resource           ../../../ATOMS-UI/resources/WebUI/page_obj.txt

*** Keywords ***

Open Browser for portal
    [Arguments]    ${HOST}    ${BROWSER}
    Open Browser    ${HOST}    ${BROWSER}
    Maximize Browser Window
    sleep    2s
    ${status}    Run Keyword And Return Status    Wait Until Element Is Visible    ${login}    timeout=60    error=OrangeHRM is not opened Properly.
    Should Be True    ${status}



Login To OrangeHRM Portal
        [Arguments]    ${userName}    ${password}
        Input Text    ${user_name_field}    ${userName}
    Input Password    ${password_field}    ${password}
        Click Element    ${login}
        ${status}    Run Keyword And Return Status    Wait Until Element Is Visible    ${validate_Login}    timeout=60    error=Login Failed.
    Should Be True    ${status}
        
Landing in employeeList page
    
    click element  ${PIM}
    click element  ${employeelist}
    
    

    
    
    