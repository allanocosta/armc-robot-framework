*** Settings ***
Documentation       Documentação da API: https://fakerestapi.azurewebsites.net/index.html

Resource            ${CURDIR}${/}..\\resources\\base.robot
Resource            ../resources/base.robot

Suite Setup         Connect To API


*** Test Cases ***
Search list for all Activities
    [Documentation]    Validate query response of all activities
    [Tags]    api    fakerestapi    activities    get_all_activities
    Request All Activities
    Status Code Should Be    200
    Response Code Shoul Be "30" items

Search For An Activity By Specific Id
    [Documentation]    Validate query response for a specific activity
    [Tags]    api    fakerestapi    activities    get_an_activity
    Request The Activity "8"
    Status Code Should Be    200
    Response Code Shoul Be "1" items
