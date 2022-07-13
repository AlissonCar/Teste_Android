*** Settings ***
Library     AppiumLibrary

*** Keywords *** ***

Open chat21 application
    Open Application    http://localhost:4723/wd/hub
    ...                 platformName=Android
    ...                 deviceName=teste
    ...                 udid=0045520722
    ...                 appPackage=chat21.android.demo
    ...                 appActivity=chat21.android.demo.SplashActivity
    ...                 automationName=UIautomator2



