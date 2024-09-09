*** Settings ***
Resource  ../../Resources/Resources1.robot


*** Variables ***
${Browser}  Chrome
${Url}  http://www.thetestingworld.com/testings
*** Test Cases ***
Test Case in BDD Format
    Given Start Browser and Maximize    ${Url}  ${Browser}
    When Create Folder at Runtime    acdb    zxcv
    Then Concatenate Username and Password   Testing  World

