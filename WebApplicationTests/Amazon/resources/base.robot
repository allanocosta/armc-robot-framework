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
${Browser}          chromium
${Headless}         true
${Viewport}         {'width': 1880,'height': 970}
${RecordVideo}      {'dir':'videos', 'size':{'width':1920, 'height':1080}}
${ColorScheme}      dark

${Url}              https://www.amazon.com.br
${TitlePage}        Amazon.com.br | Tudo pra você, de A a Z.


*** Keywords ***
Start Session
    New Persistent Context    browser=${Browser}    headless=${Headless}    timeout=01:00
				...    viewport=${Viewport}
				...    colorScheme=${ColorScheme}
				...    recordVideo=${RecordVideo}
    # New Browser    ${Browser}    ${Headless}    timeout=01:00
    # New Context    viewport=${Viewport}    colorScheme=${ColorScheme}    recordVideo=${RecordVideo}

Go To Homepage
    Go To    url=${Url}
    # Checkpoint home page
    Get Title    ==    ${TitlePage}

Close Session
    Close Browser    ALL

ScreenShot
    Take Screenshot

Page Title Should Be
    [Arguments]    ${PageTitle}
    # Checkpoint menu page
    Get Title    ==    ${PageTitle}
