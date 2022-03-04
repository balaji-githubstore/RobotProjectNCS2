*** Settings ***
Library   SeleniumLibrary
Library   OperatingSystem

*** Test Cases ***
TC1
#     Append To Environment Variable    Path     C:${/}Mine${/}Company${/}NCS2${/}chromedriver_win32
     Open Browser   url=http://demo.openemr.io/b/openemr    browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Input Text                    id=authUser                admin
     Input Password                id=clearPass               pass
     Select From List By Label     name=languageChoice        English (Indian)
     Click Element                 xpath=//button[@type='submit']
     Click Element                 xpath=//div[@class='menuLabel dropdown-toggle oe-dropdown-toggle']
     Click Element                 xpath=//div[contains(text(),'Patients')]
#     Click Element                 id=create_patient_btn1
#     Select Frame                  xpath=//*[@id="framesDisplay"]/div[3]/iframe
#     Click Element                 xpath=//*[@id="create_patient_btn1"]
     SELECT FRAME                  xpath=//iframe[@name='fin']
#     Click Element                 xpath=//*[@id="create_patient_btn1"]
#     Select Frame                  name=fin
     Click Element                 id=create_patient_btn1
     Unselect Frame
     Select Frame           name=pat
     Select From List By Label     name=form_title     Mr.
     Input Text                    id=form_fname       john
     Input Text                    name=form_mname     m
     Input Text                    name=form_lname     smith
     Input Text                    name=form_pubpid    1001
     Input Text                    name=form_DOB       2022-03-03
     Input Text                    name=form_sex       Male
     Input Text                    name=form_ss        text
     Input Text                    id=form_drivers_license    LD12345
     Select From List By Label     name=form_status    single
     Click Element                 id=create


     Click Element                 xpath=//input[@value='Confirm Create New Patient']
     ${alert_text}                 Handle Alert         action=ACCEPT        timeout=5s
     Log To Console                ${alert_text}
     Click Element                 xpath=//div[@class='closeDlgIframe']
     Element Text Should Be        xpath=//div[@class='clearfix']    Medical Record Dashboard - John Cena
#     [Teardown]                    Close Browser