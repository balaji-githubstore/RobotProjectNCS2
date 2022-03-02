*** Comments ***
1.	Navigate onto https://demo.openemr.io/b/openemr/interface/login/login.php?site=default
2.	Enter username as admin
3.	Enter password as pass
3.  Select language as “English Indian”
4. Click on the login button
5. Click on Patient/Client and then click on Patients
6. Click Add New Patient
7. Add the first name, last name
8. Update DOB as today's date (use Input text to send the date)
9. Select the gender
10. Click on the create new patient button above the form
11. Click on confirm create new patient button
12. Print the text from alert box (if any error before handling alert add 5 sec wait)
13. Handle alert
14. Close the Happy Birthday popup
15. Validate the added patient name
16. close the browser

*** Settings ***
Library   SeleniumLibrary
Library   Telnet
*** Test Cases ***
TC1
     Open Browser   url=http://demo.openemr.io/b/openemr    browser=chrome    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Input Text                    id=authUser                admin
     Input Password                id=clearPass               pass
     Select From List By Label     name=languageChoice        English (Indian)
     Click Element                 xpath=//button[@type='submit']
     Click Element                 xpath=//div[@class='menuLabel dropdown-toggle oe-dropdown-toggle']
     Click Element                 xpath=//div[contains(text(),'Patients')]
      SELECT FRAME                  xpath=//iframe[@name='fin']
      Click Element                  id=create_patient_btn1
      Unselect Frame
      Select Frame      xpath=//iframe[@name='pat']
      Select From List By Label     name=form_title     Mr.
      Input Text                    id=form_fname       John
      Input Text                    name=form_mname     a
      Input Text                    name=form_lname     Mn
      Input Text                    id=form_pubpid      1002
      Input Text                    name=form_DOB       09-aug-1998
      Select From List By Label    id=form_sex           Male
      Input Text                   id=form_drivers_license    LD12345
      Input Text                    name=form_ss          text
      Click Element                 id=create
      Click Element                 xpath=//input[@value='Confirm Create New Patient']
        ${alert_text}                 Handle Alert            action=ACCEPT        timeout=50s
      Log To Console    ${alert_text}
       Click Element                 xpath=//div[@class='closeDlgIframe']
       Element Text Should Be        xpath=//div[@class='clearfix']     Medical Record Dashboard - John Mn
       [Teardown]                    Close Browser
