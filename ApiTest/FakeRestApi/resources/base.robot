*** Settings ***
Documentation       Documentação da API: https://fakerestapi.azurewebsites.net/index.html

Library             RequestsLibrary
Library             Collections


*** Variables ***
${url_api}          https://fakerestapi.azurewebsites.net
&{activity_8}       id=8
...                 title=Activity 8
...                 completed=True
&{new_activity}     id=25
...                 title=My New Activity
...                 dueDate=2022-07-08T13:41:57.436Z
...                 completed=True


*** Keywords ***
Connect To API
    Create Session    fakeApi    ${url_api}

Request All Activities
    ${response_code}    GET On Session    fakeApi    /api/v1/Activities
    Log    ${response_code.text}
    Set Test Variable    ${response_code}

Request The Activity "${activity_id}"
    ${response_code}    GET On Session    fakeApi    /api/v1/Activities/${activity_id}
    Log    ${response_code.text}
    Set Test Variable    ${response_code}

Create A New Activity
    ${headers}    Create Dictionary    Content-Type=application/json v=1.0
    ${response_code}    POST On Session    fakeapi    /api/v1/Activities
    ...    data={"id": 25, "title": "My New Activity", "dueDate": "2022-07-08T13:41:57.436Z", "completed": true}
    ...    headers=${headers}
    Log    ${response_code.text}
    Set Test Variable    ${response_code}

Edit The Activity "${activity_id}"
    ${headers}    Create Dictionary    Content-Type=application/json v=1.0
    ${response_code}    PUT On Session    fakeApi    /api/v1/Activities/${activity_id}
    ...    data={"id": 23, "title": "Edited Activity", "dueDate": "2030-07-08T20:31:47.575Z", "completed": true}
    ...    headers=${headers}
    Log    ${response_code.text}
    Set Test Variable    ${response_code}

Status Code Should Be
    [Arguments]    ${status_code}
    Status Should Be    ${status_code}

Response Code Shoul Be "${qty_items}" items
    Length Should Be    ${response_code.json()}    ${qty_items}

Check If The Response The Activity 8 Is Correct
    Dictionary Should Contain Item    ${response_code.json()}    id    ${activity_8.id}
    Dictionary Should Contain Item    ${response_code.json()}    title    ${activity_8.title}
    Should Not Be Empty    ${response_code.json()["dueDate"]}
    Dictionary Should Contain Item    ${response_code.json()}    completed    ${activity_8.completed}

Check If The Response The New Activity Is Correct
    Dictionary Should Contain Item    ${response_code.json()}    id    ${new_activity.id}
    Dictionary Should Contain Item    ${response_code.json()}    title    ${new_activity.title}
    Dictionary Should Contain Item    ${response_code.json()}    dueDate    ${new_activity.dueDate}
    Dictionary Should Contain Item    ${response_code.json()}    completed    ${new_activity.completed}
