*** Settings ***
Library     SeleniumLibrary
Resource  ../../Resources/Resources1.robot

Test Setup  Start Browser and Maximize  ${Url}  ${Browser}
Test Teardown  Close Browser Window
Suite Setup  Before Each Test Suite
Suite Teardown  After Each Test Suite



*** Variables ***
${Browser}  Chrome
${Url}  http://www.thetestingworld.com/testings

*** Test Cases ***
Test1
    [Documentation]  e.g. This TC is to check registration functionality of application
   # Start Browser and Maximize  ${Url}  ${Browser}
   # ${Res}=  Start Browser and Maximize     ${url}  ${Browser}
#    Log  ${Res}
    input text  name:fld_username   Salut Robert
#    sleep  3s