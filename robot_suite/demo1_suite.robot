*** Settings ***
Library     DateTime
Library     String

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

TC7
    Set Local Variable    ${var1}   $125,000,500
    Set Local Variable    ${var2}   $100,500

    ${var1}     Remove String    ${var1}    $     ,
    Log To Console    ${var1}

    ${var2}     Remove String    ${var2}    $     ,
    Log To Console    ${var2}
    
    ${res}    Evaluate    ${var1}+${var2}
    Log To Console    ${res}
    
TC8
    Log To Console    ${CURDIR}
    Log To Console    ${EXECDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${SUITE_NAME}
    Log To Console    ${TEST_NAME}
    Log To Console    ${TEMPDIR}
    Log To Console    ${PREV_TEST_NAME}
    Log To Console    ${PREV_TEST_STATUS}
    Log To Console    ${EXECDIR}\\driver\\chromedriver.exe
    Log To Console    ${EXECDIR}${/}driver${/}chromedriver.exe

TC9
    Set Local Variable    ${num1}   0
    IF    ${num1}>0
        Log To Console    positive ${num1}
    ELSE IF     ${num1}==0
        Log To Console    Zero
    ELSE
         Log To Console    negative ${num1}
    END

TC10
    Set Local Variable    ${browser}   ch
    IF    '${browser}' == 'ch'
            Log To Console    Chrome
    ELSE IF     '${browser}' == 'ff'
            Log To Console    Firefox
    ELSE
           Log To Console    Edge
    END

TC11
    # print 1 to 10
    FOR    ${i}    IN RANGE    1    11
        Log To Console     ${i}
    END