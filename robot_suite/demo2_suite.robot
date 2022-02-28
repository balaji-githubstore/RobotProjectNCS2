*** Settings ***

*** Variables ***
${MY_NAME}      Balaji Dinakaran
@{COLORS}       red     green      yellow     blue      pink    orange
&{MY_DETAIL}        name=bala       profession=trainer      salary=5000    

*** Test Cases ***
TC7
    Log To Console    ${MY_DETAIL}[name]
    Log To Console    ${MY_DETAIL}[profession]
    Log To Console    ${MY_DETAIL}[salary]
TC1
    Log To Console    hello
    Log To Console    ${MY_NAME}

TC2
   Log To Console    ${MY_NAME}
   Log To Console    ${COLORS}[0]
   Log To Console    ${COLORS}[1]
    ${size}     Get Length    ${COLORS}
    Log To Console    ${size}

TC3
    comment  write for loop to print all the values from the list COLORS one by one.
    FOR    ${c}    IN RANGE    0    4
        Log To Console    ${COLORS}[${c}]
    END

TC4
    @{fruits}       Create List     mango       banana      apple    cherry
    
    ${size}     Get Length    ${fruits}
    Log To Console    ${size}

    #write for loop to print each item from list
    FOR    ${i}    IN RANGE    0    ${size}
       Log To Console    ${fruits}[${i}]
    END

TC5
    FOR    ${col}    IN    @{COLORS}
        Log To Console    ${col}
    END

TC6
    @{fruits}       Create List     mango       banana      apple    cherry
    FOR    ${element}    IN    @{fruits}
        Log To Console    ${element}
    END













