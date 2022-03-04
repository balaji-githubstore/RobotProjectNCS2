*** Settings ***

Library     ../demo/calculator.py


*** Test Cases ***
TC1
     ${res}  Add Two Number  70  80
     Log To Console    ${res}