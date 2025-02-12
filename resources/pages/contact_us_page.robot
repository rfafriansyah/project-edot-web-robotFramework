*** Settings ***
Library     SeleniumLibrary
Library     Dialogs


*** Variables ***
${INPUT_NAME}                   //input[@name="name"]
${INPUT_EMAIL}                  //input[@name="email"]
${INPUT_PHONE_NUMBER}           //input[@id='phone_number']
${INPUT_COMPANY_NAME}           //input[@id='company_name']
${INPUT_NUMBER_OF_EMPLOYEES}    xpath://button[@id='number_of_employees']
${INPUT_SOLUTION}               //button[@id='solutions']
${INPUT_QUESTION}               //textarea[@id='questions']
${BUTTON_SUBMIT}                xpath://button[@type='submit']
${TOAST_SUCCESS_SUBMIT}         xpath://li[@class='group toast group-[.toaster]:bg-background group-[.toaster]:text-foreground group-[.toaster]:border-border group-[.toaster]:shadow-lg']/div[2]/div[.='Successfully Sent']


*** Keywords ***
Input Form Contact Us
    [Arguments]
    ...    ${name}
    ...    ${email}
    ...    ${phoneNumber}
    ...    ${companyName}
    ...    ${numberOfEmployees}
    ...    ${solutions}
    ...    ${questions}
    ...    ${messageToast}
    Element Should Be Visible    ${INPUT_NAME}
    Element Should Be Visible    ${INPUT_EMAIL}
    Element Should Be Visible    ${INPUT_PHONE_NUMBER}
    Element Should Be Visible    ${INPUT_COMPANY_NAME}
    Element Should Be Visible    ${INPUT_NUMBER_OF_EMPLOYEES}
    Element Should Be Visible    ${INPUT_SOLUTION}
    Element Should Be Visible    ${INPUT_QUESTION}
    Element Should Be Visible    ${BUTTON_SUBMIT}
    Input Text    ${INPUT_NAME}    ${name}
    Input Text    ${INPUT_EMAIL}    ${email}
    Input Text    ${INPUT_PHONE_NUMBER}    ${phoneNumber}
    Input Text    ${INPUT_COMPANY_NAME}    ${companyName}
    Click Element    ${INPUT_NUMBER_OF_EMPLOYEES}
    Click Element    css:[data-value='${numberOfEmployees}']
    Click Element    ${INPUT_SOLUTION}
    Click Element    css:[data-value='${solutions}']
    Input Text    ${INPUT_QUESTION}    ${questions}
    Double Click Element    ${BUTTON_SUBMIT}
    Element Should Be Visible    ${TOAST_SUCCESS_SUBMIT}
    Element Should Contain    ${TOAST_SUCCESS_SUBMIT}    ${messageToast}
