*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
TC1
    Open Browser   browser=gc   executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   20s
    Go To    url=https://nasscom.in/nasscom-membership
#    Click Element    link=Calculate Membership Fee
    ${text}     Handle Alert    timeout=10s
    Log To Console     ${text}
    Should Be Equal    ${text}    Please enter amount in digit and greater than zero.

TC2
    Open Browser   browser=gc   executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   20s
    Go To    url=https://nasscom.in/nasscom-membership
    Click Element    link=Calculate Membership Fee
    Alert Should Be Present    text=Please enter amount in digit and greater than zero.     action=ACCEPT   timeout=50s
