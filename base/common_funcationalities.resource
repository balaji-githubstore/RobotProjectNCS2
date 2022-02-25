*** Settings ***
Library     SeleniumLibrary

#customized keyboard
*** Keywords ***
Launch Browser
    Open Browser   browser=gc   executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   30s
    Go To    url=https://google.com