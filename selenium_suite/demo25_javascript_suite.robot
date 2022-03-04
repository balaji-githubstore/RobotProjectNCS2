*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Valid Login
     Open Browser   url=https://www.myntra.com/   browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    5s
#     Click Element    css=[data-track=login]

    Execute Javascript      document.querySelector(".desktop-linkButton").click()
