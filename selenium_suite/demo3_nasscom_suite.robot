*** Comments ***
1.	Navigate onto https://nasscom.in/
2.	Click on New User
3.	Enter First name as admin
4.	Enter Last name as pass
5.	Enter email address as admin@gmail.com
6.	Enter company name as Google
7.	Select IT Consulting from dropdown
8.	No need to automate CAPTCHA
9.	Click on Register

*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://nasscom.in/
    Click Element    partial link=New User
    Input Text    id=edit-field-fname-reg    bala
    Input Text    id=edit-field-lname    dina
    Input Text    id=edit-mail    bala@gmail.com
    Input Text    id=edit-field-company-name-registration   ncs
    Select From List By Label    id=edit-field-business-focus-reg       IT Consulting
#    Select From List By Index    id=edit-field-business-focus-reg       2
#     Select From List By Value    id=edit-field-business-focus-reg    51
    Click Element    id=edit-submit--2
    
TC2
    Get Text    locator
    Get Element Attribute    locator    attribute
    Get Value    locator
    Get Selected List Label    locator


