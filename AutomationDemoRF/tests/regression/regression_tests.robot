*** Settings ***
Resource    ../../keywords/CommonKeywords.robot
Resource    ../../keywords/RegistrationKeywords.robot
Resource    ../../resources/variables.robot
Suite Setup    Open Browser To Registration Page
Suite Teardown    Close Browser
Test Teardown     Capture Screenshot On Failure

*** Test Cases ***
Valid Registration With Unique Email
    ${email}=    Generate Unique Email
    Fill Registration Form    ${VALID_FIRSTNAME}    ${VALID_LASTNAME}    ${VALID_ADDRESS}    ${email}    ${VALID_PHONE}    ${VALID_PASSWORD}    ${VALID_PASSWORD}
    Submit Registration Form
    Verify Registration Success

Missing Last Name
    Fill Registration Form    ${VALID_FIRSTNAME}    ${EMPTY}    ${VALID_ADDRESS}    ${VALID_EMAIL}    ${VALID_PHONE}    ${VALID_PASSWORD}    ${VALID_PASSWORD}
    Submit Registration Form
    Verify Registration Failure

Invalid Phone Number
    Fill Registration Form    ${VALID_FIRSTNAME}    ${VALID_LASTNAME}    ${VALID_ADDRESS}    ${VALID_EMAIL}    ${INVALID_PHONE}    ${VALID_PASSWORD}    ${VALID_PASSWORD}
    Submit Registration Form
    Verify Registration Failure

Password Mismatch
    Fill Registration Form    ${VALID_FIRSTNAME}    ${VALID_LASTNAME}    ${VALID_ADDRESS}    ${VALID_EMAIL}    ${VALID_PHONE}    ${VALID_PASSWORD}    ${MISMATCH_PASSWORD}
    Submit Registration Form
    Verify Registration Failure

Multiple Hobbies Selected
    ${email}=    Generate Unique Email
    Fill Registration Form    ${VALID_FIRSTNAME}    ${VALID_LASTNAME}    ${VALID_ADDRESS}    ${email}    ${VALID_PHONE}    ${VALID_PASSWORD}    ${VALID_PASSWORD}
    Click Element    xpath=//input[@id='checkbox1']
    Click Element    xpath=//input[@id='checkbox3']
    Submit Registration Form
    Verify Registration Success
