*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem


*** Variables ***
${BROWSER}          chrome
${URL}              https://edot.id/contact-us
${IMPLICIT_WAIT}    10


*** Keywords ***
Open Test Browser
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    ${IMPLICIT_WAIT}

Close Test Browser
    Close All Browsers
