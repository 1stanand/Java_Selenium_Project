*** Settings ***
Resource    ../locators/registration_locators.robot
Library     SeleniumLibrary
Resource    ../resources/variables.robot


*** Keywords ***
Fill Registration Form
    [Arguments]
    ...                     ${firstname}
    ...                     ${lastname}
    ...                     ${address}
    ...                     ${email}
    ...                     ${phone}
    ...                     ${password}
    ...                     ${confirm}
    Input Text              ${INPUT_FIRSTNAME}      ${firstname}
    Input Text              ${INPUT_LASTNAME}       ${lastname}
    Input Text              ${INPUT_ADDRESS}        ${address}
    Input Text              ${INPUT_EMAIL}          ${email}
    Input Text              ${INPUT_PHONE}          ${phone}
    Click Element           ${SELECT_GENDER_MALE}
    Click Element           ${SELECT_HOBBY_MOVIES}
    Input Password          ${INPUT_PASSWORD}       ${password}
    Input Password          ${INPUT_CONFIRM_PASSWORD}                       ${confirm}

Submit Registration Form
    Click Button            ${BTN_SUBMIT}

Verify Registration Success
    Title Should Be         Web Table

Verify Registration Failure
    Title Should Be         Register
