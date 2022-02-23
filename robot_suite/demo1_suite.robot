*** Settings ***
Library     DateTime

*** Test Cases ***
TC1 Print Name
    Log To Console      Balaji Dinakaran
    Log To Console      Hello Everyone123

TC2 Log In Report
    Log    Balaji

TC3 Print Date
   ${current_date}      Get Current Date
   Log To Console       ${current_date}

TC4
    ${name}     Set Variable    john
    Log To Console    ${name}

    Set Local Variable    ${my_name}    balaji dinakaran
    Log To Console    ${my_name}
    Log    ${my_name}

TC5
    # declare two variable and store value as 25 and 24 respectively
    Set Local Variable    ${num1}   25
    Set Local Variable    ${num2}   24
    ${result}      Evaluate    ${num1}+${num2}
    Log To Console    ${result}

TC6
    Set Local Variable    ${radius}   25
    ${area_of_circle}   Evaluate    3.14*${radius}*${radius}
    Log To Console    ${area_of_circle}
    #one way to comment
    Comment     will start at 2 PM IST