*** Settings ***
Documentation   Login feature
Library         AppiumLibrary
Resource        ../locators/WelcomePageLocator.robot

*** Keywords ***
Click button Got It
    wait until element is visible       ${BTN_GOT_IT}       15s
    click element                       ${BTN_GOT_IT}

