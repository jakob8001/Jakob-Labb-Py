*** Settings ***

Documentation   Webtest
Library  SeleniumLibrary
Resource    ../Resources/Keywords.robot
Suite Setup     Begin Web Test
Suite Teardown  End Web Test

*** Variables ***
${BROWSER}  chrome
${URL}  http://rental5.infotiv.net/
${FIRST_NAME}   Johan
${LAST_NAME}    Olsson
${PHONE_NUMBER}  123123123
${MAIL}  Johan.Olsson@gmail.com
${PASSWORD}  secret

*** Test Cases ***
User Has To Fill Out All Fields to Create User
    [Documentation]     Testing that user has to fill out all fields to create a new user.
    [Tags]  krav 1
    Go To Create user
    Create User With Missing Field

User Can Create New User
    [Documentation]     Test If You leve not correct Infomation You Get An Popup
    [Tags]  Krav 2
    Go To Create User
    Cancel Creating User


#User Can Select Date
    #[Documentation]  Here We Test That User Can Select A Trip Day
    #[Tags]  Date Selection