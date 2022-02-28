*** Comments ***
Work with list of webelements

*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
     Open Browser   browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=http://google.com

     ${link_count}      Get Element Count    tag=a
     Log To Console    ${link_count}

     [Teardown]     Close Browser

TC2
    Open Browser   browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=http://google.com
     
     @{elements}    Get WebElements    tag=a
     
#     Click Element    ${elements}[0]
    ${text}     Get Text    ${elements}[0]
    Log To Console    ${text}

     ${text}     Get Text    ${elements}[1]
    Log To Console    ${text}

      ${text}     Get Text    ${elements}[5]
    Log To Console    ${text}

TC3
    Open Browser   browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=http://google.com

     @{elements}    Get WebElements    tag=a

     FOR    ${i}    IN RANGE    0    25

         ${text}     Get Text    ${elements}[${i}]
         Log To Console    ${text}

         ${href}      Get Element Attribute    ${elements}[${i}]    href
         Log To Console    ${href}

     END

