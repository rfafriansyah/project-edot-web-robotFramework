*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BUTTON_CONTACT_US}    xpath:/html/body/div[1]/nav/header/ul[3]/li[2]/a
${WELCOME_MESSAGE}      xpath://div[contains(@class,'topic-block-title')]


*** Keywords ***
Click Button Contact Us
    Element Should Be Visible    ${BUTTON_CONTACT_US}
    Click Element    ${BUTTON_CONTACT_US}
