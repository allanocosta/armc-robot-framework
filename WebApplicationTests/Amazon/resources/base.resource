*** Settings ***
Documentation       Arquivo base do projeto

Library             Browser
Resource            actions/header.resource
Resource            actions/menuPage.resource
Resource            actions/productPage.resource
Resource            actions/cartPage.resource
Resource            actions/searchResultsPage.resource


*** Variables ***
${BROWSER}          chromium
${HEADLESS}         True
&{VIEWPORT}         width=${1880}
...                 height=${970}
${RECORD_VIDEO}     {'dir':'videos', 'size':{'width':1920, 'height':1080}}
${COLOR_SCHEME}     dark

${URL}              https://www.amazon.com.br
${PAGE_TITLE}       Amazon.com.br


*** Keywords ***
Start Session
  New Browser             browser=${BROWSER}      headless=${HEADLESS}    timeout=01:00
  Set Browser Timeout     30

Go To Homepage
  New Page                url=${URL}
  Set Viewport Size       ${VIEWPORT.width}       ${VIEWPORT.height}
  Get Title               *=                      ${PAGE_TITLE}

Close Session
  Close Browser           ALL

ScreenShot
  Take Screenshot

Page Title Should Be
  [Arguments]             ${PAGE_TITLE}
  Get Title               ==                      ${PAGE_TITLE}
