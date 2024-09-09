*** Settings ***
#Acest folder are rolul de a face set-up-ul pentru toate suitele din acest folder


suite setup  Before each Test Suite
suite teardown  After each Test Suite
*** Variables ***

*** Keywords ***


Before each Test Suite
    Log  Test Suite Started

After each Test Suite
    Log  Test Suite Ended