*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.medibuddy.in/

    Run Keyword And Ignore Error    Click Element    id=wzrk-cancel

    Click Element    link=Login
    Click Element    xpath=//div[contains(text(),'Insurance/Corporate')]
    Click Element    xpath=//div[contains(text(),'Login using Username')]
    Input Text    name=userName    jack
    Click Element    xpath=//button[text()='Proceed']
    ${actual_error}     Get Text    xpath=//div[contains(text(),'Oops!')]
    Should Contain    ${actual_error}    You need to login through portal.medibuddy.in
#    Capture Page Screenshot
#    Capture Element Screenshot    xpath=//div[contains(text(),'Oops!')]
    [Teardown]  Close Browser

TC2
    Open Browser   browser=gc   executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Go To    url=https://www.medibuddy.in/
    Maximize Browser Window
    Set Selenium Implicit Wait   30s
    Click Element    id=wzrk-cancel
    Click Element    link=Login
    Click Element    xpath=//div[contains(text(),'Insurance/Corporate')]
    Click Element    xpath=//div[contains(text(),'Login using Username')]
    Input Text    name=userName    jack
    Click Element    xpath=//button[text()='Proceed']
    ${actual_error}     Get Text    xpath=//div[contains(text(),'Oops!')]
    Should Contain    ${actual_error}   You need to login through portal.medibuddy.in
    [Teardown]  Close Browser