*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Valid Login
     Open Browser   url=http://demo.openemr.io/b/openemr    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    10s
     Input Text    id=authUser    physician
     Input Password    css=#clearPass    physician
     Select From List By Label    css=Select[name='languageChoice']       English (Indian)
     Click Element    css=[type='submit']
     Title Should Be    OpenEMR
#     Mouse Over    id=username
     Click Element    xpath=//li[text()='Logout']
#     Capture Page Screenshot

    Input Text    id=departure    20-03-2022




