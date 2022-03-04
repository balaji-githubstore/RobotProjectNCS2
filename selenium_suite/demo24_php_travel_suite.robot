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


*** Test Cases ***
TC1
     Open Browser   browser=gc      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    20s
     Set Selenium Speed    1s 
     Go To    url=https://phptravels.net/flights
#     Click Element    xpath=//a[text()='flights']
     Input Text    id=autocomplete    LGA
     Click Element    xpath=//*[text()='LGA']

    Input Text    id=autocomplete2    dal
    Press Keys      id=autocomplete2    ARROW_DOWN
    Press Keys      None    ENTER

#    Input Text    id=departure    25-03-2022

    #Use javascript only if input text keyoword did not support
    Execute Javascript      document.querySelector("#departure").value="25-03-2022"




    
    