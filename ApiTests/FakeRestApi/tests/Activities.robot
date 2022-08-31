*** Settings ***
Documentation       Documentação da API: https://fakerestapi.azurewebsites.net/index.html

Resource            ${CURDIR}\\..\\resources\\base.robot

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
    Check If The Response The Activity 8 Is Correct

Add A New Activity
    [Documentation]    Validate creation a new activity
    [Tags]    api    fakerestapi    activities    post_new_activity
    Create A New Activity
				Status Code Should Be    200
    Check If The Response The New Activity Is Correct

Edit An Existing Activity
    [Documentation]    Validate editing an activity
    [Tags]    api    fakerestapi    activities    put_edit_activity
    Edit The Activity "17"
				Status Code Should Be    200
    Check If The Response The Edited Activity Is Correct

Delete An Existing Activity
    [Documentation]    Validate deleting an activity
    [Tags]    api    fakerestapi    activities    delete_activity
				Delete The Activity "4"
    Status Code Should Be    200
    Check If Activity Is Deleted
