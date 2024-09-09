*** Settings ***
Library     SeleniumLibrary
Resource  ../../Resources/Resources1.robot



*** Variables ***
${Browser}  Chrome
${Url}  http://www.thetestingworld.com/testings

*** Test Cases ***
Python testing by creating keywords with py
    #Create Folder at Runtime    Hello1234   Testing
    Concatenate Username and Password   Testing     World


