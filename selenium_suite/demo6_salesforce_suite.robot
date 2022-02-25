*** Comments ***
1.	Navigate onto https://www.salesforce.com/in/form/signup/freetrial-sales/
2.	Enter first name as “John”
3.	Enter last name as “wick”
4.	Enter work email as “john@gmail.com”
5.	Select Job title as “IT Manager”
6.	Select Employees as “101-500 employees”
7.	Select country as “United Kingdom”
8.	Do not fill the phone number
9.	Click on check box
10.	Click on start my free trial
11.	Get the error message displayed “Enter a valid phone number”
*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.salesforce.com/in/form/signup/freetrial-sales/
    Input Text    name=UserFirstName   bala
    Input Text    xpath=//input[contains(@id,'UserLast')]    Dina
    Input Text    name=UserEmail   bala@ncs.com
    Select From List By Label    name=UserTitle     IT Manager
    Input Text    name=CompanyName    NCS
    Select From List By Label    xpath=//select[contains(@id,'CompanyCountry')]          United Kingdom
    Select From List By Value    name=CompanyEmployees      950
    Click Element    xpath=//div[@class='checkbox-ui']
#    Click Element    name=start my free trial
    Click Element    xpath=//button[text()='start my free trial']
    Element Text Should Be    //span[contains(@id,'UserPhone')]    Enter a valid phone number
    Element Should Contain    //span[contains(@id,'UserPhone')]     valid phone number
    [Teardown]      Close Browser