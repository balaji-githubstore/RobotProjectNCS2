*** Settings ***
Library   SeleniumLibrary
Library   Telnet
Library    DatabaseLibrary
*** Test Cases ***
TC1
     Open Browser   url=https://datatables.net/extensions/select/examples/initialisation/checkbox.html    browser=chrome    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
#     Table Should Contain    xpath=//table[@id='example']    Accountant
    ${name}     Get Text    xpath=//table[@id='example']/tbody/tr[1]/td[2]
    Log To Console     ${name}
    Should Contain     ${name}    Airi Satou

#    target from table tag 
    ${txt}     Get Table Cell    xpath=//table[@id='example']    2    2
    Log To Console    ${txt}

#    target inside tbody
    Table Row Should Contain    xpath=//table[@id='example']    1    Airi Satou

    Table Cell Should Contain    xpath=//table[@id='example']    2    2    Airi Satou