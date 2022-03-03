*** Comments ***
1.	Launch the web site https://phptravels.net/
2.	Goto Flights
3.	Select Business
4.	Choose "FROM" location as "Los Angeles" (LAX)
5.	Choose "TO" as "Dallas" (DAL)
6.	Set the travel date “30-12-2021”
7.	Adult as 4
8.	Child as 2
9.	Get the first flight details and print
LAX  DAL
Dates ( 23-09-2021  25-09-2021 )
Adults 4 Childs 2 Infants 0
10.	Close the browser
*** Settings ***
Library     SeleniumLibrary

Test Teardown       Close Browser

*** Test Cases ***
#TC1
#     Open Browser   browser=gc      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
#     Maximize Browser Window
#     Set Selenium Implicit Wait    5s
#     Go To    url=http://google.com
#     Run Keyword And Ignore Error   Click Element    link=Gmail123

TC2
     Open Browser   browser=gc      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    5s
     Go To    url=http://google.com
     @{list}    Run Keyword And Ignore Error   Click Element    link=Gmail123
     Log To Console    ${list}
     Log To Console    ${list}[0]
     Log To Console    ${list}[1]

     IF    '${list}[0]' == 'FAIL'
         Log To Console    Failed oo clicking gmail123
     END





#     IF   '${title}' != 'GMAIL'
#          Fatal Error
#     END
#
#TC2
#    Log To Console    hello