*** Settings ***
Documentation       Arquivo base do projeto

Library             Browser
#Actions Resources
Resource            actions/header.robot
Resource            actions/menuPage.robot
Resource            actions/productPage.robot
Resource            actions/cartPage.robot
Resource            actions/searchResultsPage.robot


*** Variables ***
${BROWSER}          chromium
${HEADLESS}         true
${VIEWPORT}         {'width': 1880,'height': 970}
${RECORD_VIDEO}      {'dir':'videos', 'size':{'width':1920, 'height':1080}}
${COLOR_SCHEME}      dark

${URL}              https://www.amazon.com.br
${PAGE_TITLE}        Amazon.com.br | Tudo pra você, de A a Z.


*** Keywords ***
Start Session
    New Persistent Context    browser=${BROWSER}    headless=${HEADLESS}    timeout=01:00
				...    viewport=${VIEWPORT}
				...    colorScheme=${COLOR_SCHEME}
				...    recordVideo=${RECORD_VIDEO}

Go To Homepage
    Go To    url=${URL}
    Get Title    ==    ${PAGE_TITLE}

Close Session
    Close Browser    ALL

ScreenShot
    Take Screenshot

Page Title Should Be
    [Arguments]    ${PAGE_TITLE}
    Get Title    ==    ${PAGE_TITLE}
