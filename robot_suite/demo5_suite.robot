*** Settings ***
Library     OperatingSystem

*** Test Cases ***
TC1
    Create File    ${EXECDIR}${/}zdata.txt      Hello World
    File Should Exist    ${EXECDIR}${/}zdata.txt
    Remove File    ${EXECDIR}${/}zdata.txt

    @{items}	List Directory      ${EXECDIR}
    Log To Console    ${items}

    @{items}	List Directory      C:\\Mine
    Log To Console    ${items}

    FOR    ${element}    IN    @{items}
        Log To Console   ${element}

    END

     @{items}	List Files In Directory   C:\\Mine\\Company\\NCS2\\NCS2
    Log To Console    ${items}

    FOR    ${element}    IN    @{items}
        Log To Console   ${element}

    END