*** Settings ***
Documentation       Documentação da API: https://fakerestapi.azurewebsites.net/index.html

Library             RequestsLibrary
Library             Collections


*** Variables ***
${url_api}          https://fakerestapi.azurewebsites.net
&{activity_8}       id=0
...                 title=string
...                 dueDate=2022-06-25T20:43:48.727Z
...                 completed=true


*** Keywords ***
Connect To API
    Create Session    fakeApi    ${url_api}

Request All Activities
    ${response_code}    GET On Session    fakeApi    /api/v1/Activities
    Log    ${response_code.text}
    Set Test Variable    ${response_code}

Request The Activity "${id_activity}"
    ${response_code}    GET On Session    fakeApi    /api/v1/Activities/${id_activity}
    Log    ${response_code.text}
    Set Test Variable    ${response_code}

Status Code Should Be
    [Arguments]    ${status_code}
    Status Should Be    ${status_code}

Response Code Shoul Be "${qty_items}" items
    Length Should Be    ${response_code.json()}    ${qty_items}

    
