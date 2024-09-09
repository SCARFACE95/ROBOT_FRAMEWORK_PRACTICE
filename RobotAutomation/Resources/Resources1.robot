*** Settings ***
Library     SeleniumLibrary
Library     ../ExternalKeywords/UserKeywords.py

*** Variables ***



*** Keywords ***
Start Browser and Maximize
    [Documentation]  Documentation at Keyword level
    [Arguments]  ${UserURL}  ${InputBrowser}
    open browser  ${UserUrl}    ${InputBrowser}
    maximize browser window

#    ${Title}=   get title
#    RETURN  ${Title}
    #Deci tot ce se executa in keywordul asta face return la title


Close Browser Window
    Close Browser


Before Each Test Suite
    Log  Before Each Test Suite

After Each Test Suite
    Log  After Each Test Suite


#Create keyword with python
Create Folder at Runtime
    [Arguments]     ${foldername}      ${subfoldername}
    #call de py function
    create_folder   ${foldername}
    create_sub_folder   ${subfoldername}
    Log  "Task Done Successfuly"

Concatenate Username and Password
    [Arguments]  ${username}    ${password}
    ${resultval}=  concatenate_two_values  ${username}  ${password}
    Log  ${resultval}
