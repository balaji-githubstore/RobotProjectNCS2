*** Settings ***
Library     DateTime

*** Test Cases ***
TC1 Print Name
    Log To Console      Balaji Dinakaran
    Log To Console      Hello Everyone123

TC2 Log In Report
    Log    Balaji

TC3 Print Date
   ${current_date}      Get Current Date
   Log To Console       ${current_date}
