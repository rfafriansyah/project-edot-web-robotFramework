*** Settings ***
Documentation       Test suite for login functionality

Resource            ../resources/common.robot
Resource            ../resources/pages/home_page.robot
Resource            ../resources/pages/navbar_page.robot
Resource            ../resources/pages/contact_us_page.robot
Library             Dialogs

Test Setup          Open Test Browser
Test Teardown       Close Test Browser


*** Variables ***
${NAME}                     Rhama Fahri
${EMAIL}                    rhamafahri123@gmail.com
${PHONE_NUMBER}             0813412948213
${COMPANY_NAME}             PT. RHAMA TEST
${NUMBER_OF_EMPLOYEES}      51 - 100
${SOLUTIONS}                esuite (ERP)
${QUESTIONS}                Testttttttt
${MESSAGE_SUCCESS}          Successfully Sent


*** Test Cases ***
Valid Login Test
    Input Form Contact Us
    ...    ${NAME}
    ...    ${EMAIL}
    ...    ${PHONE_NUMBER}
    ...    ${COMPANY_NAME}
    ...    ${NUMBER_OF_EMPLOYEES}
    ...    ${SOLUTIONS}
    ...    ${QUESTIONS}
    ...    ${MESSAGE_SUCCESS}
    Pause Execution
