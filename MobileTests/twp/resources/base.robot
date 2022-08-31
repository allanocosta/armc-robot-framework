*** Settings ***
Library    AppiumLibrary

Resource    actions/navBar.robot

*** Variables ***
${APPIUM_TIMEOUT}    5
${PLATAFORM_NAME}    Android
${DEVICE_NAME}    Android Emulator
${APP}    ${CURDIR}\\..\\app\\twp.apk

*** Keywords ***
Start Session
    Set Appium Timeout    ${APPIUM_TIMEOUT}
    Open Application    http://localhost:4723/wd/hub
    ...    automationName=UiAutomator2
    ...    platformName=${PLATAFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP}
    Wait Until Page Contains    COMEÇAR

Finish Session
    Close All Applications

Clicar em começar
    Click Text    COMEÇAR

Validar texto da descrição do app
    [Arguments]    ${TEXT}
    Element Should Contain Text    io.qaninja.android.twp:id/mi_description    ${TEXT}
