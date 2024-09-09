*** Settings ***
Library     SeleniumLibrary
Library  ../../ExternalKeywords/Locators.py
Resource  ../../Resources/Resources1.robot

Test Setup  Start Browser and Maximize  ${Url}  ${Browser}
Test Teardown  Close Browser Window




*** Variables ***
${Browser}  Chrome
${Url}  http://www.thetestingworld.com/testings

*** Test Cases ***
First TC with JSON
    ${username}=    Read Element Locator    Registration.username_textbox_name
    Input Text  name:${username}    Testing

    ${password}=    Read Element Locator    Registration.password_textbox_name
    Input Text  name:${password}    1234566



*** Keywords ***
Read Element Locator
    [Arguments]  ${JsonPath}
    ${result}=  read_locator_from_json  ${JsonPath}
    RETURN  ${result}