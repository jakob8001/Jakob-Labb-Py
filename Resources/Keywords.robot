*** Keywords ***
Begin Web Test
    Open Browser    about:blank     ${BROWSER}
    Go To Web Page
    Maximize Browser Window
Go To Web Page
    Load Page
    Verify Page Loaded
Load Page
    Go To ${URL}
Verify Page Loaded
    Wait Until Page Contains    When do you want to make your trip?
Go To Create User
    Click Button    //*[@id="createUser"]
    Verify Create User Loaded
Verify Create User Loaded
    Wait Until Page Contains    Create a new user
Create User With Missing Field
    Enter Create Account Information
    Press Create Ueser
Create User
Sign Into User
    Enter Account Information
    Click Button    //*[@id="login"]
    Wait Until Page Contains    Logout
Enter Account Information
    Input Text  //*[@id="email"]  ${MAIL}
    Input Password  //*[@id="password"]  ${PASSWORD}
End Web Test
    Close Browser