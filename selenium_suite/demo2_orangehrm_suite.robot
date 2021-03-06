*** Comments ***
Create demo2_orangehrm_suite.robot
1. Navigate to the url https://opensource-demo.orangehrmlive.com/index.php
2. Enter username as john
3. Enter password as john123
4. Click Login
5. User should be displayed with error message as "Invalid Credential"
*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Invalid Credential
    Open Browser    browser=gc   executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://opensource-demo.orangehrmlive.com/index.php
    Input Text    id=txtUsername    john
    Input Password    id=txtPassword    john123
    Click Element    name=Submit
    ${title}     Get Title
    Log To Console    ${title}
    ${url}      Get Location
    Log To Console    ${url}
    ${error_text}     Get Text    id=spanMessage
    Log To Console    ${error_text}
    Element Text Should Be    id=spanMessage    Invalid credentials
    Close Browser

TC2
    Open Browser    browser=gc   executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://opensource-demo.orangehrmlive.com/
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    name=Submit
    ${current_url}     Get Location
    Log    ${current_url}
    Click Element    id=welcome
    Click Element    link=Logout

#adding emergency contact
TC3
    Open Browser    browser=gc   executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://opensource-demo.orangehrmlive.com/
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    name=Submit
    Click Element    id=menu_pim_viewMyDetails
#    Click Element    link=Emergency Contacts
    Click Element    partial link=Emergency
    Click Element    id=btnAddContact
    Input Text    id=emgcontacts_name    John
    Input Text    id=emgcontacts_relationship    Brother
    Input Text    id=emgcontacts_homePhone    9888888899
    Click Element    id=btnSaveEContact