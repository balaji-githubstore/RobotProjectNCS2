*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Valid Login
     Open Browser   url=http://demo.openemr.io/b/openemr    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Input Text    id=authUser    physician
     Input Password    id=clearPass    physician
     Select From List By Label    name=languageChoice       English (Indian)
     Click Element    xpath=//button[@type='submit']
     Title Should Be    OpenEMR
     Mouse Over    id=username
     Click Element    xpath=//li[text()='Logout']

