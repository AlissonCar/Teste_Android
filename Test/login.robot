# robot -d Output Test/login.robot
*** Settings ***
Resource    ../Resources/android-res.robot
Resource    AbrirApp.robot
*** Test Cases ***
Login
    Open chat21 application
    Wait Until Page Contains Element                ${LOGIN-EMAIL-FIELD}
    Signin With User    ${EMAIL}     ${USERPASSWORD}
    Logout With User
    Signin With User    ${EMAIL}     ${USERPASSWORD}

