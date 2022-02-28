*** Settings ***
Library    Collections

*** Variables ***
${MY_NAME}      Balaji Dinakaran
@{COLORS}       red     green      yellow     blue      pink    orange
&{MY_DETAIL}        name=bala       profession=trainer      salary=5000    

*** Test Cases ***

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

TC7
    Log To Console    ${MY_DETAIL}[name]
    Log To Console    ${MY_DETAIL}[profession]
    Log To Console    ${MY_DETAIL}[salary]

TC8
    @{fruits}       Create List     mango       banana      apple    cherry
    FOR    ${element}    IN    @{fruits}
        IF    '${element}' == 'apple'
            Log To Console    ${element}
            Exit For Loop
        END
    END

TC9
    @{fruits}       Create List     mango       banana      apple    cherry
    FOR    ${element}    IN    @{fruits}
        Run Keyword If    '${element}' == 'apple'       Log To Console    ${element}
        Exit For Loop If    '${element}' == 'apple'
    END

*** Comments ***
1.	Create a list called fruits and store banana, mango, orange
2.	Remove mango
3.	Append pineapple
4.	Insert record at 2nd index as JackFruit.
5.	Print the fruits list

*** Test Cases ***

TC10
     @{fruits}       Create List     banana      mango       orange
#     Remove From List       ${fruits}       1
#     Log To Console    ${fruits}
    Remove Values From List    ${fruits}    mango
    Log To Console    ${fruits}

    Append To List    ${fruits}     pineapple
    Log To Console    ${fruits}

    Insert Into List    ${fruits}    2    jackFruit
    Log To Console    ${fruits}

    Sort List    ${fruits}
    Log To Console    ${fruits}

    List Should Contain Value    ${fruits}    jackFruit

TC11
    @{fruits}  Create List      banana         mango       pineapple    cherry  grapes
    Append To List    ${fruits}     orange
    Log To Console    ${var3}
    Log To Console    ${fruits}