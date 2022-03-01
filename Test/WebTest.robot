*** Settings ***

Documentation   Webtest
Library  SeleniumLibrary
Resource    ../Resources/Keywords.robot
Suite Setup     Begin Web Test
Suite Teardown  End Web Test

*** Variables ***
${BROWSER}  chrome
${URL}  http://rental5.infotiv.net/

*** Test Cases ***

