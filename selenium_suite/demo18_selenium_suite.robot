*** Comments ***
Work with list of webelements

*** Settings ***
Library     SeleniumLibrary
# force tag will included for all test case
Force Tags      forcegoogle

#can be overriden using your own tag inside test case
Default Tags        defaultgoogle

Suite Setup     Log To Console    Suite Start
Suite Teardown      Log To Console    Suite End

Test Setup      Log To Console    Start
Test Teardown   Close Browser

*** Test Cases ***
TC1
     Open Browser   browser=gc      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=http://google.com


TC2
    [Tags]  google      gmail
    Open Browser   browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=http://gmail.com


TC3
    [Tags]  google      high
    Open Browser   browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=http://magento.com


