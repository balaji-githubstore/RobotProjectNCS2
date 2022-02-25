*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Keywords ***
Launch Browser
    Open Browser   browser=gc   executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   30s
    Go To    url=https://google.com

End Browser
    Capture Page Screenshot
    Close Browser

*** Test Cases ***
TC1
    Launch Browser
    Click Element    link=Gmail
    End Browser