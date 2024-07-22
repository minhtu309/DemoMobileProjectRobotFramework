*** Settings ***
Documentation   Login feature
Library         AppiumLibrary
Resource        ConfigApplication.robot

*** Keywords ***
Open VPBank Application
  Open Application  http://127.0.0.1:4723/wd/hub  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  deviceName=${DEVICE_NAME}              app=${ANDROID_APP}  appActivity=com.scf.updated.ui.tour.TourActivity