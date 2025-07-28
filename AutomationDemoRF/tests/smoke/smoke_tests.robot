*** Settings ***
Resource    ../../keywords/CommonKeywords.robot
Resource    ../../keywords/RegistrationKeywords.robot
Resource    ../../resources/variables.robot
Suite Setup    Open Browser To Registration Page
Suite Teardown    Close Browser
Test Teardown     Capture Screenshot On Failure

*** Test Cases ***
Valid Registration
    ${email}=    Generate Unique Email
    Fill Registration Form    ${VALID_FIRSTNAME}    ${VALID_LASTNAME}    ${VALID_ADDRESS}    ${email}    ${VALID_PHONE}    ${VALID_PASSWORD}    ${VALID_PASSWORD}
    Submit Registration Form
    Verify Registration Success

Missing First Name
    Fill Registration Form    ${EMPTY}    ${VALID_LASTNAME}    ${VALID_ADDRESS}    ${VALID_EMAIL}    ${VALID_PHONE}    ${VALID_PASSWORD}    ${VALID_PASSWORD}
    Submit Registration Form
    Verify Registration Failure

Invalid Email Format
    Fill Registration Form    ${VALID_FIRSTNAME}    ${VALID_LASTNAME}    ${VALID_ADDRESS}    ${INVALID_EMAIL}    ${VALID_PHONE}    ${VALID_PASSWORD}    ${VALID_PASSWORD}
    Submit Registration Form
    Verify Registration Failure
