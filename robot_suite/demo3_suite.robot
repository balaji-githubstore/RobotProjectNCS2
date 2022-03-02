*** Test Cases ***
TC1
    Set Local Variable    ${v1}        hello1
    Set Global Variable    ${v2}        hello2
    ${v3}   Set Variable    hello3
    Log To Console    ${v1}
    Log To Console    ${v2}
    Log To Console    ${v3}
    
TC2
#    Log To Console    ${v1}
    Log To Console    ${v2}
#    Log To Console    ${v3}