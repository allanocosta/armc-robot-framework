*** Settings ***
Documentation       Documentação da API: https://fakerestapi.azurewebsites.net/index.html

Library             Collections
Library             RequestsLibrary

*** Variables ***
${URL_API}              https://fakerestapi.azurewebsites.net
&{ACTIVITY_8}           id=8
...                     title=Activity 8
...                     completed=True
&{NEW_ACTIVITY}         id=25
...                     title=My New Activity
...                     dueDate=2022-07-08T13:41:57.436Z
...                     completed=True
...                     completed=True
&{EDITED_ACTIVITY}      id=23
...                     title=Edited Activity
...                     dueDate=2022-07-08T13:41:57.436Z
...                     completed=True


*** Keywords ***
Connect To API
    Create Session    fakeApi    ${URL_API}

Request All Activities
    ${RESPONSE_CODE}    GET On Session    fakeApi    /api/v1/Activities
    Log    ${RESPONSE_CODE.text}
    Set Test Variable    ${RESPONSE_CODE}

Request The Activity "${activity_id}"
    ${RESPONSE_CODE}    GET On Session    fakeApi    /api/v1/Activities/${activity_id}
    Log    ${RESPONSE_CODE.text}
    Set Test Variable    ${RESPONSE_CODE}

Create A New Activity
    ${headers}    Create Dictionary    Content-Type=application/json v=1.0
    ${RESPONSE_CODE}  POST On Session
    ...    fakeapi
    ...    /api/v1/Activities
    ...    data={"id": 25, "title": "My New Activity", "dueDate": "2022-07-08T13:41:57.436Z", "completed": true}
    ...    headers=${headers}
    Log    ${RESPONSE_CODE.text}
    Set Test Variable    ${RESPONSE_CODE}

Edit The Activity "${activity_id}"
    ${headers}    Create Dictionary    Content-Type=application/json v=1.0
    ${RESPONSE_CODE}  PUT On Session
    ...    fakeApi
    ...    /api/v1/Activities/${activity_id}
    ...    data={"id": 23, "title": "Edited Activity", "dueDate": "2030-07-08T20:31:47.575Z", "completed": true}
    ...    headers=${headers}
    Log    ${RESPONSE_CODE.text}
    Set Test Variable    ${RESPONSE_CODE}

Delete The Activity "${activity_id}"
    ${RESPONSE_CODE}    DELETE On Session    fakeApi    /api/v1/Activities/${activity_id}
    Log    ${RESPONSE_CODE.text}
    Set Test Variable    ${RESPONSE_CODE}

Status Code Should Be
    [Arguments]    ${STATUS_CODE}
    Status Should Be    ${STATUS_CODE}

Response Code Shoul Be "${qty_items}" Items
    Length Should Be    ${RESPONSE_CODE.json()}    ${qty_items}

Check If The Response The Activity 8 Is Correct
    Dictionary Should Contain Item    ${RESPONSE_CODE.json()}    id    ${ACTIVITY_8.id}
    Dictionary Should Contain Item
    ...    ${RESPONSE_CODE.json()}
    ...    title
    ...    ${ACTIVITY_8.title}
    Should Not Be Empty    ${RESPONSE_CODE.json()["dueDate"]}
    Dictionary Should Contain Item
    ...    ${RESPONSE_CODE.json()}
    ...    completed
    ...    ${ACTIVITY_8.completed}

Check If The Response The New Activity Is Correct
    Dictionary Should Contain Item    ${RESPONSE_CODE.json()}    id    ${NEW_ACTIVITY.id}
    Dictionary Should Contain Item
    ...    ${RESPONSE_CODE.json()}
    ...    title
    ...    ${NEW_ACTIVITY.title}
    Dictionary Should Contain Item
    ...    ${RESPONSE_CODE.json()}
    ...    dueDate
    ...    ${NEW_ACTIVITY.dueDate}
    Dictionary Should Contain Item
    ...    ${RESPONSE_CODE.json()}
    ...    completed
    ...    ${NEW_ACTIVITY.completed}

Check If The Response The Edited Activity Is Correct
    Dictionary Should Contain Item
    ...    ${RESPONSE_CODE.json()}
    ...    id
    ...    ${EDITED_ACTIVITY.id}
    Dictionary Should Contain Item
    ...    ${RESPONSE_CODE.json()}
    ...    title
    ...    ${EDITED_ACTIVITY.title}
    Should Not Be Empty    ${RESPONSE_CODE.json()["dueDate"]}
    Dictionary Should Contain Item
    ...    ${RESPONSE_CODE.json()}
    ...    completed
    ...    ${EDITED_ACTIVITY.completed}

Check If Activity Is Deleted
    Should Be Empty    ${RESPONSE_CODE.content}
