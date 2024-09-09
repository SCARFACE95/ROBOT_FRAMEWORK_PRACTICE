*** Settings ***
Resource  ../../Resources/Resources1.robot
Library    String


*** Variables ***
${Browser}  Chrome
${Url}  http://www.thetestingworld.com/testings

*** Test Cases ***
Test Case in BDD Format
    Given Start Browser and Maximize    ${Url}  ${Browser}
        ${random_string1}=    Generate Random String    5
        ${random_string2}=    Generate Random String    10
    When Create Folder at Runtime    ${random_string1}    ${random_string2}
    Then Concatenate Username and Password   Testing  World

