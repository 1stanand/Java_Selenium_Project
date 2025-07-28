*** Settings ***
Library    SeleniumLibrary    run_on_failure=Capture Page Screenshot
Library    OperatingSystem
Library    ../libs/PythonUtils.py
Resource   ../resources/variables.robot

*** Keywords ***
Open Browser To Registration Page
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0
    Set Screenshot Directory    ${SCREENSHOT DIR}

Close Browser
    Close Browser

Capture Screenshot On Failure
    Run Keyword If Test Failed    Capture Page Screenshot
