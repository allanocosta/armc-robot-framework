*** Settings ***
Documentation       Documentação da API: https://fakerestapi.azurewebsites.net/index.html

Resource            ${CURDIR}${/}..\\resources\\base.robot

Suite Setup         Connect To API


*** Test Cases ***
Search list for all Activities
    [Documentation]    Validate query response of all activities
    [Tags]    api    fakerestapi    activities    get_all_activities
    Get All Activities
    Status Code Should Be    200