*** Settings ***
Documentation       Arquivo de App da Base Page

Library             AppiumLibrary
Resource            actions/navBar.resource
Resource            actions/formsPage.resource


*** Variables ***
${APPIUM_TIMEOUT}               20
${AUTOMATION_NAME}              UiAutomator2
${PLATAFORM_NAME}               Android
${DEVICE_NAME}                  Android Emulator
${APP}                          ${CURDIR}/../app/twp.apk
${ANDROID_PLATFORM_VERSION}     %{ANDROID_PLATFORM_VERSION=14}


*** Keywords ***
Start Session
  Set Appium Timeout      ${APPIUM_TIMEOUT}
  Open Application        http://127.0.0.1:4723
  ...                     automationName=${AUTOMATION_NAME}
  ...                     platformName=${PLATAFORM_NAME}
  ...                     platformVersion=${ANDROID_PLATFORM_VERSION}
  ...                     deviceName=${DEVICE_NAME}
  ...                     app=${APP}
  # ...  appPackage=io.appium.android.apis
  # ...  appActivity=.app.SearchInvoke
  Wait Until Page Contains                        COMEÇAR

Finish Session
  Close All Applications

Clicar Em Começar
  Click Text              COMEÇAR

Validar Texto Da Descrição Do App
  [Arguments]             ${TEXT}
  Element Should Contain Text                     io.qaninja.android.twp:id/mi_description        ${TEXT}
