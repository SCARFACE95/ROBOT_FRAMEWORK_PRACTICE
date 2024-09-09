*** Settings ***
Library     SeleniumLibrary
Resource  ../../Resources/Resources1.robot



*** Variables ***
${Browser}  Chrome
${Url}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Fetch Data
    open Browser  ${Url}  ${Browser}
    Maximize Browser Window
#    ${PageTitle}=  Get Title
#    Log  ${PageTitle}
#    ${Speed}=   Get Selenium Speed
#    Log     ${Speed}
#
#    ${Value}=   Get Value   xpath://input[@type='submit']
#    Log     ${Value}
#
#    ${Text}=    Get Text    xpath://a[@class='displayPopup']
#    Log     ${Text}


#Fetch data from List
#    Select From List By Index   name:sex    1
#    ${Val}=     Get Selected List Value     name:sex
#    Log  ${Val}
#
#    ${Text}=    Get Selected List Label     name:sex
#    Log  ${Text}
#
#    ${AllLabels}=   Get List Items  name:sex
#    Log     ${AllLabels}



    ${current_url}=     Get Location
    Log     $(current_url)

    ${PageHTML}=    Get Source
    Log     ${PageHTML}

    ${Attr}=    Get Element Attribute   name:fld_username   class
    Log     ${Attr}


    #Caut mai multe elemente cu acelasi locator
    ${cnt}=     Get Element Count   class:field
    Log     ${cnt}


