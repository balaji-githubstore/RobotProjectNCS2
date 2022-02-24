*** Comments ***
1.	Navigate onto  https://www.goto.com/meeting/
2.	Click on Accept Recommended Settings
3.	Click on Try Free
4.	Enter first name as “John”
5.	Enter last name as “wick”
6.	Enter email as “john@gmail.com”
7. Enter phone number as 9090909
8.	Company size – 10-99
9.	Click on start my trial

*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.goto.com/meeting
    Click Element    id=truste-consent-button
    Click Element    link=Try Free
    Input Text    id=first-name    Balaji
    Input Text    id=last-name    Dina
    Input Text    id=login__email   bala@g.com
    Select From List By Label    id=CompanySize       10 - 99
    Click Element    xpath=//button[text()='Start My Trial']
    ${header}      Get Text    tag=h1
    Log To Console    ${header}
    
    ${text}     Get Text    xpath=//div[@class='inputField__requirements']
    Log To Console    ${text}
    Element Should Contain    xpath=//div[@class='inputField__requirements']    8 - 32 Characters