*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser   browser=gc   executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   20s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/

    Select Frame    xpath=//frame[@name='login_page']
    Input Text    name=fldLoginUserId    cust1002
    Click Element    link=CONTINUE

    Unselect Frame

