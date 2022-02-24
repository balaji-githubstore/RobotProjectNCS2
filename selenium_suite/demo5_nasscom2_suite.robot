*** Comments ***
1.	Navigate onto https://nasscom.in/nasscom-membership
2.	Click on Institutional Members
3. Check Telecom Services and Trade & Investment
4. Enter Name of Organizatio as NCS
5. Enter address line 1 --> #23, pune
6. Select State - Maharashtra
7. Select city - Pune
8. Upload the file
9. Click Offline (In case of TDS deduction)
10. CLick preview
*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://nasscom.in/nasscom-membership
    Click Element    id=edit-field-membership-type-und-1203
    Click Element    id=edit-field-business-focus-inst-und-970
    Click Element    id=edit-field-business-focus-inst-und-968
    Input Text    id=edit-title    NCS
    Input Text    id=edit-field-address-line-1-und-0-value    kslls9 kkks
#    Scroll Element Into View    id=edit-field-memorandum-article-of-asso-und-0-upload
    Choose File    id=edit-field-memorandum-article-of-asso-und-0-upload    file_path=C:\\Users\\JiDi\\Downloads\\Testing TOC - 15 days.doc
    Select From List By Label    id=edit-field-state-member-und       Maharashtra
    Select From List By Label    id=edit-field-city-membership-und      Pune
    Click Element    id=edit-field-mode-of-payment-und-1
    Click Element    id=edit-field-code-of-conduct-und-0
    Click Element    id=edit-preview

TC2
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://nasscom.in/nasscom-membership
    Click Element    id=edit-field-membership-type-und-1203
    Click Element    id=edit-field-business-focus-inst-und-970
    Click Element    id=edit-field-business-focus-inst-und-968
    Input Text    id=edit-title    NCS
    Input Text    id=edit-field-address-line-1-und-0-value    kslls9 kkks
#    Scroll Element Into View    id=edit-field-memorandum-article-of-asso-und-0-upload
    Choose File    id=edit-field-memorandum-article-of-asso-und-0-upload    file_path=C:\\Users\\JiDi\\Downloads\\Testing TOC - 15 days.doc
    Select From List By Label    id=edit-field-state-member-und       Maharashtra
    Select From List By Label    id=edit-field-city-membership-und      Pune
    Click Element    id=edit-field-mode-of-payment-und-1
    Click Element    id=edit-field-code-of-conduct-und-0
    Click Element    id=edit-preview


TC3
     Open Browser    url=https://nasscom.in/nasscom-membership   browser=chrome   executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Click Element   id=edit-field-membership-type-und-1203
     Click Element     xpath=//input[@id='edit-field-business-focus-inst-und-970']
     Click Element     id=edit-field-business-focus-inst-und-968
     Input Text    id=edit-title   NCS
     Input Text    id=edit-field-address-line-1-und-0-value    23, Pune
     Select From List By Label    id=edit-field-state-member-und    Maharashtra
     Select From List By Label    id=edit-field-city-membership-und     Pune
     Choose File      id=edit-field-memorandum-article-of-asso-und-0-upload  file_path=D:${/}python${/}robot_project${/}selenium-screenshot-1.png
     Click Element    id=edit-field-memorandum-article-of-asso-und-0-upload-button--5
     Click Element    id=edit-field-mode-of-payment-und-1
     Click Element    id=edit-preview




TC4
     Open Browser    url=https://nasscom.in/nasscom-membership   browser=chrome   executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Select Radio Button    group_name=field_membership_type[und]    value=1203
     Select Checkbox     xpath=//input[@id='edit-field-business-focus-inst-und-970']
     Select Checkbox     id=edit-field-business-focus-inst-und-968
     Input Text    id=edit-title   NCS
     Input Text    id=edit-field-address-line-1-und-0-value    23, Pune
     Select From List By Label    id=edit-field-state-member-und    Maharashtra
     Select From List By Label    id=edit-field-city-membership-und     Pune
      Choose File    id=edit-field-memorandum-article-of-asso-und-0-upload    file_path=C:\\Users\\JiDi\\Downloads\\Testing TOC - 15 days.doc
    Click Element    id=edit-field-mode-of-payment-und-1
     Click Element    id=edit-field-code-of-conduct-und-0
     Click Element    id=edit-preview


