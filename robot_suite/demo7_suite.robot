*** Test Cases ***
TC
    Set Local Variable    ${var}    hello world.png
    @{output}    Run Keyword And Ignore Error    Should Contain    ${var}    png
    Log To Console    ${output}
    Log To Console    ${output}[0]

    IF  '${output}[0]'=='PASS'
            Log To Console    ${var}
    END