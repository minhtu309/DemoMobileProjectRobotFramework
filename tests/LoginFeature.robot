*** Settings ***
Documentation  Login feature
Library  AppiumLibrary
Resource  ../resources/Common.robot
Resource  ../object-repository/page-object/WelcomePage.robot
Resource  ../object-repository/page-object/LoginPage.robot

*** Test Cases ***
Check login with invalid account
    Open VPBank Application
    Click button Got It
    Do login to application  tunm@123.com   123
    Verify Login Success
