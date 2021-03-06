*** Settings ***
Resource          resource.robot
Test Teardown     Close Browser

*** Test Cases ***
Valid Login
    Given browser is opened to login page
    When user "agts.etc@gmail.com" logs in with password "AZERTY123"
    Then welcome page should be open

*** Keywords ***
Browser is opened to login page
    Open browser to login page

User "${username}" logs in with password "${password}"
    Input username    ${username}
    Input password    ${password}
    Submit credentials

