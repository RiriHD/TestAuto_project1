*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Library           OperatingSystem

*** Variables ***
${EXECDIR}              ..${\}chromedriver.exe
${BROWSER}              Chrome
${DELAY}                0
${VALID USER}           agts.etc@gmail.com
${VALID PASSWORD}       Tokj2866
${LOGIN URL}            http://192.168.77.75:2500/auth/login
${WELCOME URL}          http://192.168.77.75:2500/main/dashboard
${ERROR URL}            http://192.168.77.75:2500/auth/login
${username_field}       /html/body/app-root/app-auth/div/app-login/div[1]/div/form/div/div[2]/input
${password_field}       /html/body/app-root/app-auth/div/app-login/div[1]/div/form/div/div[3]/div/input
${login_button}         /html/body/app-root/app-auth/div/app-login/div[1]/div/form/div/div[4]/button[1]
${title}                AGTS
*** Keywords ***
#fonctions prédéfinies
Open Browser To Login Page
    Set Environment Variable  webdriver.chrome.driver  ${EXECDIR}
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    #Title Should Be    AGTS
    Location Should Be    ${LOGIN URL} 
Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    xpath: ${username_field}    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    xpath: ${password_field}    ${password}

Submit Credentials
    Click Button    xpath= ${login_button}

Welcome Page Should Be Open
    #Location Should Be    ${WELCOME URL}
    Title Should Be    ${title} 


