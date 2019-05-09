*** Settings ***
Documentation     This Test Case file Contains Test cases Related to Circuit Module

Test Setup         Open Browser for portal    ${HOST}    ${BROWSER}
Test Teardown      Close Browser

Library            Selenium2Library

Resource           ../../ATOMS-UI/resources/WebUI/TestData.txt
Resource           ../../ATOMS-UI/resources/WebUI/page_obj.txt
Resource           ../../ATOMS-UI/keywords/Robot_keywords/atoms_UI_circuit_Keywords.robot
Resource           ../../ATOMS-UI/keywords/Robot_keywords/atoms_UI_Keywords.robot
Resource           ../../ATOMS-UI/keywords/Robot_keywords/atoms_UI_vendor_Keywords.robot

*** Test Cases ***

Login in to portal
    Login To OrangeHRM Portal    ${userName}    ${password}
    
Adding employee to Empoyeelist
        Login To OrangeHRM Portal    ${userName}    ${password}
        Landing in employeeList page
        