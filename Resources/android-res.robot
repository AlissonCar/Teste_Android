*** Settings ***
Library     AppiumLibrary
Resource    passoword.robot

*** Variables ***

#*** Login Page ***
${LOGIN-EMAIL-FIELD}     id=chat21.android.demo:id/email
${LOGIN-PASSWORD-FIELD}  id=chat21.android.demo:id/password
${LOGIN-SINGIN-BUTTON}   id=chat21.android.demo:id/login

#*** Main Page ***
${MAIN-HOME-TAB}        //android.widget.TextView[@text="HOME"]
${MAIN-PROFILE-TAB}     //android.widget.TextView[@text="PROFILE"]

#*** PROFILE PAGE***
${PROFILE-LOGOUT-BUTTON}  id=chat21.android.demo:id/logout

*** Keywords ***


Signin With User
    [Arguments]         ${EMAIL}     ${USERPASSWORD}
    Input User Email    ${EMAIL}
    Input User Password     ${USERPASSWORD}
    submit Login
    Verify Login Is Successful

Input User Email
    [Arguments]     ${EMAIL}
    Wait Until Page Contains Element                ${LOGIN-EMAIL-FIELD}
    Input Text        ${LOGIN-EMAIL-FIELD}          ${EMAIL}

Input User Password
    [Arguments]     ${USERPASSWORD}
    Input Password    ${LOGIN-PASSWORD-FIELD}       ${USERPASSWORD}

submit Login
    Click Element    ${LOGIN-SINGIN-BUTTON}

Verify Login Is Successful
    Wait Until Page Contains Element                ${MAIN-HOME-TAB}

Logout With User
    go to profile page
    click the logout button
    verify Login email field is displayed

go to profile page
    Click Element                       ${MAIN-PROFILE-TAB}
    Wait Until Page Contains Element    ${PROFILE-LOGOUT-BUTTON}

click the logout button
    Click Element                       ${PROFILE-LOGOUT-BUTTON}

verify Login email field is displayed
    Wait Until Page Contains Element             ${LOGIN-EMAIL-FIELD}