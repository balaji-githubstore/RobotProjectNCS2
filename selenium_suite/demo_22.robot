*** Settings ***
Library     SeleniumLibrary

Test Teardown       Close Browser

*** Test Cases ***
TC1
     Open Browser   browser=gc      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=http://google.com
     Click Element    link=Gmail
     Click Element    link=For work
     Wait Until Page Contains Element    link=Admin console         200s
     #sometimes present in 100s
     Click Element    link=Admin console

TC2
     Open Browser   browser=gc      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=http://google.com
     Click Element    link=Gmail
     Click Element    link=For work
     Wait Until Page Contains    text=Secure business email, and so much more       timeout=50s
     #sometimes present in 100s
     Click Element    link=Admin console

TC3
     Open Browser   browser=gc      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=http://google.com
     Click Element    link=Gmail
     Click Element    link=For work
     Wait Until Page Contains    Secure business email, and so much more        timeout=50s
     ${title}       Get Title
     Wait Until Page Contains Element    link=Admin console         200s
     #sometimes present in 100s
     Click Element    link=Admin console

