*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
     Open Browser   browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=http://demo.openemr.io/b/openemr
     
    ${text}     Get Text    xpath=//p[contains(text(),'most')]
    Log To Console    ${text}
    Should Contain    ${text}    The most popular open-source Electronic Health Record
    
    ${placeholder}   Get Element Attribute    id=authUser    placeholder
    Log To Console    ${placeholder}

    ${val}  Get Element Attribute    partial link=Acknowledgments    href
    Log To Console    ${val}
    
    Element Attribute Value Should Be    partial link=Acknowledgments    href    http://demo.openemr.io/b/openemr/acknowledge_license_cert.html

#    get href attribute value and print it
#    Input Text    id=authUser    Balaji Dinakaran
#    Sleep    2s
    Input Text    id=authUser    JJSJKSJKSJKSJ

    ${val}      Get Value    id=authUser 
    Log To Console    ${val}

    ${selected_label}       Get Selected List Label    name=languageChoice
    Log To Console    ${selected_label}
