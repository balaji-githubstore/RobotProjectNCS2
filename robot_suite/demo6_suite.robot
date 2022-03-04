*** Settings ***
Library     OperatingSystem

*** Test Cases ***
#TC1
#    Create Directory    C:${/}Demo1
#    Create File    C:${/}Demo1${/}zdata.txt    Balaji Dinakaran
#    Copy File    C:${/}Demo1${/}zdata.txt     C:${/}Demo1${/}xdata.txt
#    Remove File    C:${/}Demo1${/}zdata.txt

#remove file if filename contains pns
TC2
    @{files}    List Files In Directory    C:${/}Mine${/}Company${/}NCS2${/}NCS2
    Log To Console    ${files}
    ${size}     Get Length    ${files}
    Log To Console    ${size}
    
#    Log To Console    ${files}[0]
    FOR    ${file}    IN    @{files}
          @{lists}    Run Keyword And Ignore Error    Should Contain    ${file}    png
         IF    '${lists}[0]' == 'PASS'
                Log To Console    ${file}
#                Remove File    ${file}
         END
    END