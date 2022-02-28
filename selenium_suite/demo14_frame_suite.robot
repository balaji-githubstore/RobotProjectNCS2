*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Valid Login
     Open Browser   browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=http://demo.openemr.io/b/openemr
     Input Text    xpath=//input[@id='authUser']   admin
     Input Password    id=clearPass    pass
     Select From List By Label    name=languageChoice       English (Indian)
     Click Element    xpath=//button[@type='submit']
     Click Element    xpath=//div[text()='Messages']

     Select Frame    xpath=//iframe[@name='msg']

     Click Element    xpath=//a[text()='Add New']
     Select From List By Label    id=form_note_type     Pharmacy
     Select From List By Label    id=form_message_status    New
     Select From List By Index    id=users      1
     Input Text    id=note    Hello, how are you?
     Click Element    id=cancel
     Element Should Be Visible    xpath=//a[text()='Add New']
#     Element Should Contain    xpath=//a[text()='Add New']      Add New
     Unselect Frame
     [Teardown]     Close Browser

#     will start at 4:20