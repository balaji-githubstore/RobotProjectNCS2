*** Comments ***
Work with list of webelements

*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC3
    Open Browser   browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=http://google.com
     
     ${link_count}      Get Element Count    tag=a
     Log To Console    ${link_count}

     @{elements}    Get WebElements    tag=a
     Log To Console    ${elements}
     FOR    ${i}    IN RANGE    0    ${link_count}

         ${text}     Get Text    ${elements}[${i}]
         Log To Console    ${text}

         IF    '${text}'=='Images'
             Click Element    ${elements}[${i}]
             Exit For Loop
         END
     END

