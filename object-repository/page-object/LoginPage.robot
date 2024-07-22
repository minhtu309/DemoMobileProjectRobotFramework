*** Settings ***
Documentation   Login feature
Library         AppiumLibrary
Resource        ../locators/LoginPageLocator.robot

*** Keywords ***
Do login to application
    [Arguments]                         ${USER_NAME}            ${PASSWORD}
    wait until element is visible       ${EDT_USERNAME}         15s
    input text                          ${EDT_USERNAME}         ${USER_NAME}
    wait until element is visible       ${EDT_PASSWORD}         15s
    input text                          ${EDT_PASSWORD}         ${PASSWORD}
    wait until element is visible       ${EDT_PASSWORD}         15s
    Click Element                       ${BTN_LOGIN}

Verify login success
    wait until element is visible       ${MESS_SUCCESS}         15s
