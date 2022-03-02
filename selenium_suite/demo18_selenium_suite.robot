*** Comments ***
Work with list of webelements

*** Settings ***
Library     SeleniumLibrary

Suite Setup     Log To Console    Suite Start
Suite Teardown      Log To Console    Suite End

Test Setup      Log To Console    Start
Test Teardown   Log To Console    End
*** Test Cases ***
TC1
     Open Browser   browser=gc      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=http://google.com


TC2
    Open Browser   browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=http://gmail.com


TC3
    Open Browser   browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=http://magento.com


