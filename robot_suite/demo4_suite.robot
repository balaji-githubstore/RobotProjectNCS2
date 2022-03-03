*** Keywords ***
Add Two Number
    [Arguments]     ${v1}   ${v2}
    [Documentation]     This keyword add two number and returns the result
    ...     Example: \n
    ...   | ${output} | Add Two Number | 2 | 2 |

    ${res}      Evaluate    ${v1}+${v1}
    [Return]    ${res}

*** Test Cases ***
TC1
    ${output}   Add Two Number    2    2
    Log To Console    ${output}