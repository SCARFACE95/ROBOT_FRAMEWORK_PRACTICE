*** Settings ***
Library     SeleniumLibrary
Resource  ../../Resources/Resources1.robot

Test Setup  Start Browser and Maximize  ${Url}  ${Browser}
Test Teardown  Close Browser Window




*** Variables ***
${Browser}  Chrome
${Url}  http://www.thetestingworld.com/testings

*** Test Cases ***
Test2
    [Documentation]  e.g. This TC is to check registration functionality of application
   # Start Browser and Maximize  ${Url}  ${Browser}
   # ${Res}=  Start Browser and Maximize     ${url}  ${Browser}
#    Log  ${Res}
    input text  name:fld_username   Salut Andrei
#    sleep  3s