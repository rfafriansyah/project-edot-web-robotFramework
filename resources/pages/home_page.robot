*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGOUT_LINK}        xpath://a[contains(text(),'Log out')]
${WELCOME_MESSAGE}    xpath://div[contains(@class,'topic-block-title')]

*** Keywords ***
Verify Successful Login
    Element Should Be Visible    ${LOGOUT_LINK}
    Element Should Be Visible    ${WELCOME_MESSAGE}