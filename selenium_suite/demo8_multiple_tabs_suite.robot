*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
TC1
    Open Browser   browser=gc   executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   10s
    Go To    url=https://www.medibuddy.in/

    Click Element    id=wzrk-cancel
    Click Element    link=For Employer

    Switch Window   NEW
    Click Element    partial link=Sign Up Now
    Input Text    id=name    Balaji
    Input Text    id=mobileNumber    78788787
    Click Element    xpath=//input[@value='Next']
    Close Window

    Switch Window   MAIN
    ${title}    Get Title
    Log To Console    ${title}
    Title Should Be    Book Health Checks, Lab tests, Online Medicine & Doctor Consultation | MediBuddy
    [Teardown]    Close Browser

*** Comments ***
1. Navigate to https://www.db4free.net/
2. Click on phpMyAdmin
3. Enter username as admin
4. Enter password as admin124
5. Click log in
6. Error message should contain -  Access denied for user
        Element Should Contain    locator   Access denied for user
7. Close browser
*** Test Cases ***
TC2
    Open Browser   browser=gc   executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   20s
    Go To    url=https://www.db4free.net/
    Click Element    xpath=//b[contains(text(),'phpMy')]
    Switch Window   NEW
    Input Text    id=input_username    admin
    Input Text    id=input_password    admin123
    Click Element    id=input_go
    Element Should Contain    id=pma_errors    Access denied for user
    [Teardown]      Close Browser

*** Comments ***
1. Navigate to https://www.online.citibank.co.in/
2. Click on APPLY FOR CREDIT CARDS
3. Click on Travel
4. Enter email as john@gmail.com
4. Enter phone as 78787878787
5. Select Mx
6. Enter name as John D
7. Click No for Do you have a Citibank Savings Account?

*** Test Cases ***
TC3
    Open Browser   browser=gc   executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   20s
    Go To    url=https://www.online.citibank.co.in/
    Click Element    link=APPLY FOR CREDIT CARDS
    Switch Window       Online Credit Card Application Form | Citi India
    Click Element    link=Travel
    Input Text    id=Email_Id    john@gmail.com
    Input Text    id=mobile_number    88999988888
    Select From List By Label    id=Title        Mx.
    Input Text    id=FirstName    john d
    Click Element    xpath=//input[@id='existcust' and @value='No']

TC4 Switch Using Title
    Open Browser   browser=gc   executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   20s
    Go To    url=https://www.online.citibank.co.in/
    Click Element    link=APPLY FOR CREDIT CARDS
    Click Element    xpath=//span[text()='Login']
    Switch Window       Online Credit Card Application Form | Citi India
    Log To Console    We are in Online Credit Card Application Form | Citi India
    Close Window
    Switch Window   Citibank India
    Log To Console    We are in Citibank India
    Close Window
    Switch Window   MAIN
    Log To Console    We are in main tab
    Close Browser







