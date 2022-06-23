*** Settings ***
Documentation       Documentação da API: https://fakerestapi.azurewebsites.net/index.html

Library             RequestsLibrary
Library             Collections

Suite Setup         Connect To API

*** Variables ***
${URL_API}    https://fakerestapi.azurewebsites.net/api/v1/Activities

*** Test Cases ***
Search list for all Activities

*** Keywords ***
Connect To API
