*** Settings ***
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    agts.etc@gmail.com
    Input Password    AZERTY123
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser

