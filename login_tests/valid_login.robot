*** Settings ***
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    rihabhamdi2013@gmail.com
    Input Password    Tokj2874
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser
