*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Valid Login
     Open Browser   url=http://demo.openemr.io/b/openemr    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Input Text    id=authUser    admin
     Input Password    id=clearPass    pass
     Select From List By Label    name=languageChoice       English (Indian)
     Click Element    xpath=//button[@type='submit']

