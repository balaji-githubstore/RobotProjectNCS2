*** Settings ***
Resource    ../base/common_funcationalities.resource

*** Test Cases ***
TC1
    Launch Browser
    Click Element    link=Gmail
    Handle Alert