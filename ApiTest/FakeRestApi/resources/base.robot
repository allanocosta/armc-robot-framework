*** Settings ***
Documentation       Documentação da API: https://fakerestapi.azurewebsites.net/index.html

Library             RequestsLibrary
Library             Collections


*** Variables ***
${URL_API}      https://fakerestapi.azurewebsites.net


*** Keywords ***
Connect To API
    Create Session    fakeApi    ${URL_API}

Get All Activities
    ${RESPONSE}    GET On Session    fakeApi    /api/v1/Activities
    Log    ${RESPONSE.text}

Status Code Should Be
    [Arguments]    ${STATUS_CODE}
    Status Should Be    ${STATUS_CODE}