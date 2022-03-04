*** Settings ***
Library   SeleniumLibrary
Library   Telnet
Library    DatabaseLibrary
*** Test Cases ***
TC1
     Open Browser   url=https://datatables.net/extensions/select/examples/initialisation/checkbox.html    browser=chrome    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s

     ${row_count}   Get Element Count    xpath=//table[@id='example']/tbody/tr

     FOR    ${i}    IN RANGE    1    ${row_count}
         ${name}     Get Text    xpath=//table[@id='example']/tbody/tr[${i}]/td[2]
        Log To Console     ${name}
     END
#     Table Row Should Contain    xpath=//table[@id='example']    2    Airi Satou
    Table Column Should Contain    xpath=//table[@id='example']    2    Unity Butler


